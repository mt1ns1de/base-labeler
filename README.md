# Base Labeler

A minimalist, on-chain address book for the Base ecosystem.

## Overview

Base Labeler allows users to attach human-readable labels to any Ethereum address. This metadata is stored directly on-chain, ensuring data sovereignty without relying on centralized explorers or databases.

## Core Features

- **Privacy by Design:** Each user manages their own private label mapping.
- **Zero Dependencies:** Pure Solidity without external libraries.
- **Gas Efficient:** Minimal storage operations tailored for Base.

## Integration

\`\`\`solidity
function setLabel(address target, string calldata text) external;
function labels(address owner, address target) external view returns (string memory);
\`\`\`

## License
MIT
