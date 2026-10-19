#!/bin/bash
#
# This source file is part of the ADOPT-HF iOS open-source project
#
# SPDX-FileCopyrightText: 2026 UW Medicine
#
# SPDX-License-Identifier: MIT
#

set -euo pipefail

# Xcode gates SwiftPM build tool plugins (SwiftLint) and macros behind a one-time
# interactive "Trust & Enable" prompt. Xcode Cloud build nodes are ephemeral and
# non-interactive, so without these the build fails with "... must be enabled before
# it can be used". These are the Xcode Cloud equivalent of the
# -skipPackagePluginValidation and -skipMacroValidation flags used elsewhere.
#
# Package.resolved pins exact dependency versions, which is what limits the risk of
# skipping the fingerprint check.
#
# The doubled "ta" in Validatation is Xcode's own misspelling; the corrected spelling
# is silently ignored.
defaults write com.apple.dt.Xcode IDESkipPackagePluginFingerprintValidatation -bool YES
defaults write com.apple.dt.Xcode IDESkipMacroFingerprintValidation -bool YES
