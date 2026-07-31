package org.acra;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Proxy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.acra.util.StreamReader;
import org.acra.util.StubCreator$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ACRA {
    public static ErrorReporter errorReporter = (ErrorReporter) Proxy.newProxyInstance(RangesKt.class.getClassLoader(), new Class[]{ErrorReporter.class}, new StubCreator$$ExternalSyntheticLambda0());

    public static final boolean isACRASenderServiceProcess() {
        String str;
        try {
            String read = new StreamReader(new File("/proc/self/cmdline")).read();
            int length = read.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) read.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    }
                    length--;
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            str = read.subSequence(i, length + 1).toString();
        } catch (IOException unused) {
            str = null;
        }
        return str != null && StringsKt__StringsJVMKt.endsWith(str, ":acra", false);
    }
}
