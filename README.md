# CNN-Handwritten-Digit-MNIST

MNIST 손글씨 숫자 인식을 위한 FPGA 기반 신경망 프로젝트입니다.  
이 저장소는 Python 학습 코드와 Vivado RTL/IP 생성 코드가 함께 들어있습니다.

## 프로젝트 개요

- Python에서 MNIST 데이터를 학습해 가중치/바이어스를 생성
- 생성된 가중치를 고정소수점으로 변환해 `.mif` 파일로 저장
- RTL(뉴런/레이어/탑 모듈) 생성 및 Vivado 프로젝트/IP 생성
- Testbench로 시뮬레이션 정확도 확인
- (Zynq 환경) AXI DMA + AXI Lite로 보드에서 추론 가능

## 폴더 구조

- `Network/`
  - 전체 네트워크(레이어 연결, AXI 인터페이스, 시스템 통합) 중심
  - `Network/Vivado/Python`: 학습/가중치 변환/RTL 자동생성 스크립트
  - `Network/Vivado/src/fpga/rtl`: 생성된 RTL 및 `.mif` 파일
  - `Network/Vivado/src/fpga/tb`: 시뮬레이션 테스트벤치
- `Neuron/`
  - 단일 뉴런 단위의 RTL/테스트 중심
  - 작은 단위 검증용 프로젝트

## 먼저 보면 좋은 파일 순서

1. `Network/Vivado/src/fpga/rtl/include.v`  
   - 데이터폭, 레이어 수/뉴런 수 등 전체 설정
2. `Network/Vivado/src/fpga/rtl/zynet.v`  
   - 최상위 네트워크 연결 구조
3. `Network/Vivado/src/fpga/rtl/Layer_1.v`  
   - 레이어 내부 뉴런 인스턴스 구조
4. `Network/Vivado/src/fpga/rtl/neuron.v`  
   - MAC/활성화 함수 등 핵심 연산
5. `Network/Vivado/src/fpga/rtl/axi_lite_wrapper.v`  
   - AXI Lite 레지스터 인터페이스
6. `Network/Vivado/src/fpga/tb/top_sim.v`  
   - 테스트 시나리오 및 정확도 체크

## Python 흐름

### 1) 학습

- `Network/Vivado/Python/trainNN.py`
- MNIST를 불러와 네트워크를 학습하고 가중치 파일(JSON)을 저장

### 2) RTL/IP 생성

- `Network/Vivado/Python/mnistZyNet.py`
- 네트워크 구조를 정의하고 가중치를 읽어 RTL과 Vivado 프로젝트를 생성
- 내부적으로 `Network/Vivado/Python/zynet/gen_nn.py` 등을 호출

### 3) 테스트 데이터 생성

- `Network/Vivado/Python/genTestData.py`
- `test_data_XXXX.txt` 형태의 입력 데이터를 생성

## 시뮬레이션 흐름 요약

- `top_sim.v`가 `zyNet` DUT를 인스턴스
- 입력 파일(`test_data_XXXX.txt`)을 AXI-Stream으로 순차 전송
- `intr` 발생 시 AXI-Lite로 결과를 읽어 정답과 비교
- 누적 정확도를 출력

- 자동 생성 결과물(Vivado `.gen/.sim/.cache/.sdk`)이 많아 파일 수가 큽니다.
- `Neuron/Source/rtl/include.v`와 `Network/Vivado/src/fpga/rtl/include.v`는 용도가 다릅니다.
  - 전체 네트워크 분석은 `Network/.../include.v`를 기준으로 보세요.
- 파일명 오타 가능성:
  - 일부 스크립트에서 `WeigntsAndBiases.txt` / `WeightsAndBiases.txt` 표기가 혼재할 수 있으니 확인이 필요합니다.
- 레이어 설정 불일치 가능성:
  - 현재 생성된 RTL 설정은 30-20-10-10([include.v])
  - 테스트벤치 내부 numNeurons는 30-30-10-10([top_sim.v:57])
  - 시뮬레이션 시 설정 mismatch를 일으킬 수 있습니다.
- 현재 include.v에 pretrained가 정의되어 있으면 AXI로 weight/bias를 쓰는 configWeights/configBias는 실행되지 않습니다: [top_sim.v:307]) AXI vs pretrained


## 라이선스

`LICENSE` 파일을 참고하세요.
