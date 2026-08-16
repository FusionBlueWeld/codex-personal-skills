---
name: flat-noline
description: Apply a clean 2D anime character style built from flat color fills with no visible outer contour lines and restrained shading. Use for image generation, raster image editing, style transfer, or character-sheet unification when the user says 「フラノラで」, 「フラノラスタイルで描いて」, 「ノーラインで描いて」, 「フラットノーラインで」, 「フラットノーラインスタイル」, 「フラットカラー縁線なしスタイル」, 「面塗り・縁線なし」, 「黒髪女子基準の画風」, or asks to draw something as 「〇〇スタイル」 using this named style. Invoke directly with `$flat-noline`.
---

# フラノラ・スタイル

## Purpose

Apply a consistent, clean flat-color anime look to character illustrations and comparison sheets. Treat the style as a rendering rule: preserve the requested character, clothing, pose, layout, and identity while changing the treatment of color, edges, shading, and texture.

## Style specification

- Build silhouettes and clothing boundaries from adjacent filled color areas; do not draw a visible outer contour stroke.
- Use broad, mostly solid color fills with a small number of broad, low-contrast shadow blocks.
- Keep facial features, eyes, glasses, ribbons, buttons, and other essential identifiers simple and clean.
- Match the reference's soft, restrained 2D anime character-sheet appearance rather than photorealism, 3D rendering, or painterly illustration.
- Keep the existing background and divider layout unless the user asks to change them. When matching the current project reference, a warm beige background and white comparison divider are acceptable.

## Avoid

- dark edge lines, ink outlines, sketch lines, or thick strokes around silhouettes;
- knit/cable texture, fabric grain, hatching, crosshatching, dense wrinkles, and fine hair strokes;
- strong gradients, glossy highlights, realistic cast shadows, dramatic lighting, or dimensional rendering;
- adding, removing, or redesigning characters, clothing, props, text, or composition when performing a style-only edit;
- watermarks and decorative text not requested by the user.

## Workflow

1. Identify the edit target and the style reference. If the current project provides a black-haired girl reference image, use that local project image as the visual reference; otherwise use this specification as the reference.
2. For an existing image, inspect it before editing and state the invariants: preserve identity, pose, clothing, colors, scale, panel structure, and object placement. Change only the rendering style unless the user asks for content changes.
3. Use the built-in image-generation/editing workflow for raster assets. Pass both the target and reference image when available. Describe them explicitly as “edit target” and “style reference.”
4. If visible outlines remain, run one targeted refinement with this instruction: “Remove every drawn outer stroke. Define each boundary only by adjacent solid fills; retain only minimal facial or garment marks needed for recognition.”
5. Validate the result at full size: check outer silhouettes, major clothing boundaries, texture removal, restrained shading, preserved composition, and absence of unintended text or watermark.

## Reusable prompt

Use this wording when the user invokes the style without giving further detail:

```text
フラノラスタイルで描いて。
クリーンな2Dアニメのキャラクターイラスト。面塗り中心で、外周線や輪郭ストロークは使わず、隣接する塗り面の境界だけで形を表現する。影は広く薄い面を少数だけ使用し、強いグラデーション、写実的な陰影、光沢、布地の質感、編み目、ハッチング、細かい描き込みは避ける。
既存画像の編集では、人物の顔・髪型・衣装・色・ポーズ・構図・配置・比較パネルを維持し、描画処理だけをこのスタイルに統一する。文字・透かし・不要な物体は追加しない。
```

## Invocation keywords

Use these phrases as equivalent triggers:

- 「フラノラスタイルで描いて」 — preferred short command.
- 「フラノラで」 — shortest natural-language trigger.
- `$flat-noline` — preferred direct skill invocation.
- 「ノーラインで描いて」 — descriptive compatibility command.
- 「フラットノーラインで描いて」 — explicit short command.
- 「フラットカラー縁線なしスタイルで」 — explicit descriptive command.
- 「面塗り・縁線なしで、黒髪女子基準に合わせて」 — reference-oriented command.
- 「この画像をフラットノーラインスタイルに統一して」 — style-only edit command.

When the user says 「フラノラ」, 「フラノラスタイル」, 「ノーライン」, 「フラットノーライン」, or 「〇〇スタイルで描いて」 in a context that points to this style, apply this skill automatically and ask only if a missing reference or content choice would materially change the result.
