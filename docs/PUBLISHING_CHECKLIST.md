# Publishing & Preservation Checklist

This checklist distinguishes **GitHub packaging** from **handbook content editing**. The reorganization is safe: all original files remain available unchanged. The author credit has now been set to **MD Khalid Hasan**, but repository URL and other release checks remain outstanding.

## 1. Before making this public

- [x] **Author name confirmed as MD Khalid Hasan.** Updated the handbook Markdown, cover and citation text in PDF, Word document, README, and copyright credit in LICENSE. The original source ZIP remains the preservation backup. Attribution should still be reviewed by the author before publication.
- [ ] Replace the sample repository URL in `README.md` with your real GitHub URL after creating the repository.
- [ ] **Verify the citation URL** in the handbook, Word, PDF and README after choosing the final GitHub repository URL. The author name is consistent, but URL placeholders still remain.
- [ ] **Find/restore LaTeX source** if you intend to make the PDF reproducibly buildable. The supplied ZIP does not contain `latex-source/` or `.tex` files; the new README no longer claims those are present.
- [ ] **Verify the license intentionally.** The supplied `LICENSE` is CC BY-NC-ND 4.0 and is preserved without changing legal terms. Its summary references Section 33 for cited works, but the original handbook puts References in **Section 34**. The file links to the canonical licence rather than reproducing its entire legal code. Review with the copyright owner before changing its text.
- [ ] Optionally review references, mathematical examples and chapter numbering independently before claiming full scholarly verification. Archive integrity checks do not check academic correctness.

## 2. GitHub upload

1. Create a new **public or private** GitHub repository named `ml-research-handbook` (do not initialize it with an extra README or licence).
2. Extract the prepared ZIP. Upload **the contents of `ml-research-handbook/`**, preserving `.github/`, `.gitignore`, and `.gitattributes`.
3. Keep `HANDBOOK.md` in the root so GitHub can render it directly. Keep PDF/DOCX in `editions/`.
4. Verify that all three links in the README **Download** table work after pushing.
5. Review the placeholder items above before sharing the public URL or creating a `v4.0` release.

## 3. Integrity verification

From the repository root on macOS/Linux:

```bash
sha256sum -c SHA256SUMS.txt
```

On PowerShell (Windows), inspect individual hashes:

```powershell
Get-FileHash -Algorithm SHA256 .\HANDBOOK.md
Get-FileHash -Algorithm SHA256 .\editions\ML_Research_Handbook.pdf
Get-FileHash -Algorithm SHA256 .\editions\ML_Research_Handbook.docx
```

The updated author-attributed files are recorded in `SHA256SUMS.txt`. Original source file hashes remain in `SHA256SUMS.original.txt`; verify the untouched source ZIP separately. The original README remains at `docs/README.original.md`.

## 4. What was deliberately *not* done

- No changes to the **35 chapters** of `HANDBOOK.md` aside from replacing the author-credit placeholders.
- Only author-credit text and author metadata were updated in the PDF and DOCX. No changes were intended to mathematical equations, scientific claims, bibliographic references, or licensing terms.
- No fabricated `latex-source/`, no fake code samples, no invented dataset or model artifacts.
- No claim that the versions in separate formats have been exhaustively content-compared.

The uploaded source ZIP should also be kept separately as an additional off-repository backup.
