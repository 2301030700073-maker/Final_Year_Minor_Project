package com.google.common.base;

import java.util.Locale;
import java.util.logging.Logger;

/* loaded from: classes.dex */
final class Platform {
    static String nullToEmpty(String str) {
        return str == null ? "" : str;
    }

    static {
        Logger.getLogger(Platform.class.getName());
        loadPatternCompiler();
    }

    private Platform() {
    }

    static long systemNanoTime() {
        return System.nanoTime();
    }

    static String formatCompact4Digits(double d) {
        return String.format(Locale.ROOT, "%.4g", Double.valueOf(d));
    }

    private static PatternCompiler loadPatternCompiler() {
        return new JdkPatternCompiler();
    }

    private static final class JdkPatternCompiler implements PatternCompiler {
        private JdkPatternCompiler() {
        }
    }
}
