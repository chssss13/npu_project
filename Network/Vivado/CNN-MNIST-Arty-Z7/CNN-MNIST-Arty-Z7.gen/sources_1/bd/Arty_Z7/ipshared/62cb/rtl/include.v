`define pretrained                 // 사전학습된 weight/bias 파일 사용 플로우 활성화(생성 스크립트 측)
`define numLayers 4                // 설정/생성 플로우에서 의도한 전체 레이어 수
`define dataWidth 8                // 전역 데이터 비트폭(zynet, top_sim, neuron 데이터패스 공통 사용)

`define numNeuronLayer1 30         // Layer 1 뉴런 수(zynet/Layer_1 인스턴스 파라미터로 사용)
`define numWeightLayer1 784        // Layer 1 각 뉴런의 가중치 개수(입력 크기)
`define Layer1ActType "sigmoid"    // Layer 1 활성화 함수 타입(neuron으로 전달)

`define numNeuronLayer2 20         // Layer 2 뉴런 수
`define numWeightLayer2 30         // Layer 2 각 뉴런의 가중치 개수(= Layer 1 출력 수)
`define Layer2ActType "sigmoid"    // Layer 2 활성화 함수 타입

`define numNeuronLayer3 10         // Layer 3 뉴런 수(최종 maxFinder 입력 단계)
`define numWeightLayer3 20         // Layer 3 각 뉴런의 가중치 개수(= Layer 2 출력 수)
`define Layer3ActType "sigmoid"    // Layer 3 활성화 함수 타입

`define numNeuronLayer4 10         // 선택적 Layer 4용 예약 설정(현재 RTL 경로에서는 미사용)
`define numWeightLayer4 10         // 선택적 Layer 4용 예약 설정(현재 RTL 경로에서는 미사용)
`define Layer4ActType "hardmax"    // 선택적 Layer 4용 예약 활성화 함수

`define sigmoidSize 10             // Sigmoid ROM 주소 비트폭(Sig_ROM 입력 슬라이스 폭)
`define weightIntWidth 4           // 고정소수점 연산/포화(neuron/ReLU)에서 정수부 비트폭
