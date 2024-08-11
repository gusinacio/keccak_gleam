import createKeccakHash from "keccak";
import { BitArray, toBitArray } from "./gleam.mjs";

export function hash(message) {
  const hash = createKeccakHash("keccak256").update(message);
  const hex = hash.digest();
  return new BitArray(hex);
}
