
# Neural Kernel

![License](https://img.shields.io/github/license/arudradev/neural-kernel?style=flat-square&color=000000)
![Status](https://img.shields.io/badge/status-research_preview-grey?style=flat-square)

A Neuro-Symbolic architecture that decouples software logic from hardware constraints. This project simulates CPU logic gates using software neurons and replaces standard GPU rasterization with generative state inference.

**[Launch Live Demo: AI Calculator](https://huggingface.co/spaces/arudradev/ai-calculator)**

---

## Architecture

This system operates as a "Neural Mainframe," streaming the OS state to a client terminal.

### 1. Neural ALU (Logic)
The system does not utilize standard arithmetic operators (e.g., `+`, `-`, `*`). Instead, it implements a **Neural Arithmetic Logic Unit**.
*   **Mechanism:** Simulates NAND, XOR, and AND gates using perceptrons.
*   **Precision:** Deterministic binary addition and subtraction.
*   **Goal:** To mimic the physical constraints of hardware logic gates in software.

### 2. Neural Renderer (Graphics)
The UI is not rendered via the DOM or standard canvas rasterization.
*   **Mechanism:** The server maintains a "Visual Memory" of assets.
*   **Inference:** The engine reconstructs the frame based on the logic state, applying generative noise and texture.
*   **Output:** Frames are compressed and streamed via MJPEG/WebRTC.

### 3. Cloud Stream (Delivery)
*   **Server:** Handles all logic and rendering (Space CPU).
*   **Client:** Acts as a dumb terminal, receiving video frames and sending input events.



## Usage

### Prerequisites
*   Node.js 18+
*   Linux environment (required for server-side canvas drivers)

### Installation

```bash
git clone https://github.com/arudradev/neural-kernel.git
cd neural-kernel
npm install
```

### Running the Mainframe

```bash
npm run dev
# Server will start on port 7860
```

---

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=arudradev/neural-kernel&type=date&legend=top-left)](https://star-history.com/#arudradev/neural-kernel&Date)

