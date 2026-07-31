package com.tokenautocomplete;

import android.media.MediaCodec;
import android.text.Editable;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.AutoValue_SessionConfig_OutputConfig;
import androidx.camera.core.streamsharing.StreamSharing;
import com.fsck.k9.helper.MutableBoolean;
import com.tokenautocomplete.TokenCompleteTextView;
import java.util.Comparator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TokenCompleteTextView$$ExternalSyntheticLambda0 implements Comparator {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ TokenCompleteTextView$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = 0;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                Editable editable = (Editable) obj3;
                int i3 = TokenCompleteTextView.$r8$clinit;
                return Integer.compare(editable.getSpanStart((TokenCompleteTextView.TokenImageSpan) obj), editable.getSpanStart((TokenCompleteTextView.TokenImageSpan) obj2));
            case 1:
                AutoValue_SessionConfig_OutputConfig autoValue_SessionConfig_OutputConfig = (AutoValue_SessionConfig_OutputConfig) obj2;
                ((MutableBoolean) obj3).getClass();
                Class cls = ((AutoValue_SessionConfig_OutputConfig) obj).surface.mContainerClass;
                int i4 = cls == MediaCodec.class ? 2 : (cls == Preview.class || cls == StreamSharing.class) ? 0 : 1;
                Class cls2 = autoValue_SessionConfig_OutputConfig.surface.mContainerClass;
                if (cls2 == MediaCodec.class) {
                    i2 = 2;
                } else if (cls2 != Preview.class && cls2 != StreamSharing.class) {
                    i2 = 1;
                }
                return i4 - i2;
            case 2:
                return ((Number) ((Function2) obj3).invoke(obj, obj2)).intValue();
            default:
                for (Function1 function1 : (Function1[]) obj3) {
                    int compareValues = Util.compareValues((Comparable) function1.invoke(obj), (Comparable) function1.invoke(obj2));
                    if (compareValues != 0) {
                        return compareValues;
                    }
                }
                return 0;
        }
    }
}
