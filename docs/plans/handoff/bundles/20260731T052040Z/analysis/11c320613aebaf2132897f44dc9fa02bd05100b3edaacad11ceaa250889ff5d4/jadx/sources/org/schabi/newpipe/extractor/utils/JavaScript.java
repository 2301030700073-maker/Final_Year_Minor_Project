package org.schabi.newpipe.extractor.utils;

import j$.util.Optional;
import java.util.Locale;
import java.util.Random;
import okio.ByteString;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.ScriptableObject;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.ListInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class JavaScript {
    public static final ByteString.Companion EMPTY_LOGGER;
    public static volatile ByteString.Companion logger;

    static {
        ByteString.Companion companion = new ByteString.Companion(10);
        EMPTY_LOGGER = companion;
        logger = companion;
    }

    public static void compileOrThrow(String str) {
        Context enter = Context.enter();
        try {
            enter.setInterpretedMode(true);
            enter.compileString(str, null, 1, null);
            enter.close();
        } catch (Throwable th) {
            if (enter != null) {
                try {
                    enter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x004e, code lost:
    
        r6 = r10.indexOf(org.mozilla.javascript.Token.IF, r4 + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0054, code lost:
    
        if (r6 >= 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005b, code lost:
    
        if (r5 >= r11.length) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005d, code lost:
    
        j$.util.Objects.toString(r11[r5]);
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006b, code lost:
    
        r4 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0066, code lost:
    
        r2.append((java.lang.CharSequence) r10, r4, r6 + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0056, code lost:
    
        r2.append((java.lang.CharSequence) r10, r4, r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(java.lang.String r10, java.lang.Object... r11) {
        /*
            okio.ByteString$Companion r0 = org.schabi.newpipe.extractor.utils.JavaScript.logger
            okio.ByteString$Companion r1 = org.schabi.newpipe.extractor.utils.JavaScript.EMPTY_LOGGER
            if (r0 != r1) goto L8
            goto L73
        L8:
            int r2 = r11.length
            if (r2 != 0) goto Ld
            goto L71
        Ld:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r3 = r10.length()
            int r4 = r11.length
            int r4 = r4 * 16
            r5 = 32
            int r4 = java.lang.Math.min(r5, r4)
            int r4 = r4 + r3
            r2.<init>(r4)
            int r3 = r10.length()
            r4 = 0
            r5 = r4
        L26:
            if (r4 >= r3) goto L71
            char r6 = r10.charAt(r4)
            r7 = 123(0x7b, float:1.72E-43)
            if (r6 != r7) goto L3d
            int r8 = r4 + 1
            if (r8 >= r3) goto L3d
            char r8 = r10.charAt(r8)
            if (r8 != r7) goto L3d
        L3a:
            int r4 = r4 + 2
            goto L26
        L3d:
            r8 = 125(0x7d, float:1.75E-43)
            if (r6 != r8) goto L4c
            int r9 = r4 + 1
            if (r9 >= r3) goto L4c
            char r9 = r10.charAt(r9)
            if (r9 != r8) goto L4c
            goto L3a
        L4c:
            if (r6 != r7) goto L6e
            int r6 = r4 + 1
            int r6 = r10.indexOf(r8, r6)
            if (r6 >= 0) goto L5a
            r2.append(r10, r4, r3)
            goto L71
        L5a:
            int r7 = r11.length
            if (r5 >= r7) goto L66
            int r4 = r5 + 1
            r5 = r11[r5]
            j$.util.Objects.toString(r5)
            r5 = r4
            goto L6b
        L66:
            int r7 = r6 + 1
            r2.append(r10, r4, r7)
        L6b:
            int r4 = r6 + 1
            goto L26
        L6e:
            int r4 = r4 + 1
            goto L26
        L71:
            if (r0 != r1) goto L74
        L73:
            return
        L74:
            r10 = 1
            androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.utils.JavaScript.d(java.lang.String, java.lang.Object[]):void");
    }

    public static Optional forLanguageTag(String str) {
        if (str.contains("-")) {
            String[] split = str.split("-", -1);
            if (split.length > 2) {
                return Optional.of(new Locale(split[0], split[1], split[2]));
            }
            if (split.length > 1) {
                return Optional.of(new Locale(split[0], split[1]));
            }
            if (split.length == 1) {
                return Optional.of(new Locale(split[0]));
            }
        } else {
            if (!str.contains("_")) {
                return Optional.of(new Locale(str));
            }
            String[] split2 = str.split("_", -1);
            if (split2.length > 2) {
                return Optional.of(new Locale(split2[0], split2[1], split2[2]));
            }
            if (split2.length > 1) {
                return Optional.of(new Locale(split2[0], split2[1]));
            }
            if (split2.length == 1) {
                return Optional.of(new Locale(split2[0]));
            }
        }
        return Optional.empty();
    }

    public static String generate(int i, Random random) {
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(random.nextInt(64)));
        }
        return sb.toString();
    }

    public static ListExtractor.InfoItemsPage getItemsPageOrLogError(ListInfo listInfo, ListExtractor listExtractor) {
        try {
            ListExtractor.InfoItemsPage initialPage = listExtractor.getInitialPage();
            listInfo.addAllErrors(initialPage.errors);
            return initialPage;
        } catch (Exception e) {
            listInfo.addError(e);
            return ListExtractor.InfoItemsPage.EMPTY;
        }
    }

    public static String run(String str, String str2, String... strArr) {
        Context enter = Context.enter();
        try {
            enter.setInterpretedMode(true);
            ScriptableObject initSafeStandardObjects = enter.initSafeStandardObjects();
            enter.evaluateString(initSafeStandardObjects, str, str2, 1, null);
            String obj = ((Function) initSafeStandardObjects.get(str2, initSafeStandardObjects)).call(enter, initSafeStandardObjects, initSafeStandardObjects, strArr).toString();
            enter.close();
            return obj;
        } catch (Throwable th) {
            if (enter == null) {
                throw th;
            }
            try {
                enter.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }
}
