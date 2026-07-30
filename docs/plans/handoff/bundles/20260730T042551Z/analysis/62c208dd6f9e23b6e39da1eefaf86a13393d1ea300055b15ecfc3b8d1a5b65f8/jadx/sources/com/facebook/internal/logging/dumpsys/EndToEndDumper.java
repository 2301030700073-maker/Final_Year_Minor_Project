package com.facebook.internal.logging.dumpsys;

import java.io.PrintWriter;

/* loaded from: classes.dex */
public interface EndToEndDumper {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static EndToEndDumper instance;

        private Companion() {
        }

        public final EndToEndDumper getInstance() {
            return instance;
        }

        public final void setInstance(EndToEndDumper endToEndDumper) {
            instance = endToEndDumper;
        }
    }

    boolean maybeDump(String str, PrintWriter printWriter, String[] strArr);
}
