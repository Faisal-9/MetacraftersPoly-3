# MetacraftersPoly-3

This is a circuit template for use with Circom that checks whether `c` is the multiplication of `a` and `b`. 

## Inputs
- `a`: A signal input of unspecified type. 
- `b`: A signal input of unspecified type.

## Outputs
- `Q`: A signal output of unspecified type.

## Implementation
The circuit template includes three components that are used to implement the output calculation: `AND`, `NOT`, and `OR`. The circuit also includes signals `X` and `Y`, which are intermediate signals used for the output calculation.

The `AND` component takes inputs `a` and `b` and outputs the product of `a` and `b`. The `NOT` component takes input `b` and returns its negation. The `OR` component takes inputs `X` and `Y` and returns their sum minus their product.

The input signal `a` is connected to the `a` input of the `AND` component, while the input signal `b` is connected to the `b` inputs of both the `AND` and `NOT` components. The output signal of the `AND` component is connected to the `X` signal, and the output signal of the `NOT` component is connected to the `Y` signal. The `X` and `Y` signals are then connected to the `a` and `b` inputs of the `OR` component. The output signal of the `OR` component is connected to the output signal `Q`.

## Usage
To use this circuit template, simply include its code in your Circom file and instantiate the `main` component, which is set to be of the `Multiplier2` template type. You can then use the `a` and `b` inputs and the `Q` output in your program as normal signal inputs and outputs.


## License

This code is provided under an MIT license. See `LICENSE` for details.


### Install
`npm i`

### Compile
`npx hardhat circom` 

### Prove and Deploy
`npx hardhat run scripts/deploy.ts --network mumbai`
