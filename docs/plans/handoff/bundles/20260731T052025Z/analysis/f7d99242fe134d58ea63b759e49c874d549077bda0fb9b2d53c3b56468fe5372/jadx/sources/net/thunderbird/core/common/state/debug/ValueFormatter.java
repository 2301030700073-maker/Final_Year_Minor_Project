package net.thunderbird.core.common.state.debug;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.ui.scrollcapture.ScrollCapture$onScrollCaptureSearch$1;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.Collection;
import java.util.Map;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValueFormatter {
    public final Function2 customFormatter;

    public ValueFormatter(Function2 function2) {
        function2.getClass();
        this.customFormatter = function2;
    }

    public static String format$default(ValueFormatter valueFormatter, Object obj) {
        valueFormatter.getClass();
        boolean z = obj instanceof Collection;
        if (z) {
            Collection collection = (Collection) obj;
            if (collection.size() > 5) {
                return CameraDevices$CC.m(collection.size(), "[", " items]");
            }
        }
        if (z) {
            StringBuilder sb = new StringBuilder("[\n");
            int i = 0;
            for (Object obj2 : (Collection) obj) {
                int i2 = i + 1;
                if (i < 0) {
                    IntOffsetKt.throwIndexOverflow();
                    throw null;
                }
                sb.append(StringsKt__IndentKt.prependIndent(ImageAnalysis$$ExternalSyntheticLambda3.m("[", format$default(valueFormatter, Integer.valueOf(i)), "]: ", format$default(valueFormatter, obj2)), StringsKt__StringsJVMKt.repeat(" ", 2)));
                sb.append('\n');
                i = i2;
            }
            sb.append("]");
            return sb.toString();
        }
        boolean z2 = obj instanceof Map;
        if (z2) {
            Map map = (Map) obj;
            if (map.size() > 5) {
                return CameraDevices$CC.m(map.size(), "{", " entries}");
            }
        }
        if (!z2) {
            if (obj == null) {
                return "null";
            }
            String str = (String) valueFormatter.customFormatter.invoke(obj, new ScrollCapture$onScrollCaptureSearch$1(1, valueFormatter, ValueFormatter.class, "format", "format(Ljava/lang/Object;I)Ljava/lang/String;", 0, 1));
            return str.length() > 80 ? StringsKt.take(str, 79).concat("...") : str;
        }
        StringBuilder sb2 = new StringBuilder("{\n");
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            sb2.append(StringsKt__IndentKt.prependIndent(ImageAnalysis$$ExternalSyntheticLambda3.m("[", format$default(valueFormatter, entry.getKey()), "]: ", format$default(valueFormatter, entry.getValue())), StringsKt__StringsJVMKt.repeat(" ", 2)));
            sb2.append('\n');
        }
        sb2.append("}");
        return sb2.toString();
    }
}
