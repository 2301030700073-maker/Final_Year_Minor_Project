package androidx.appcompat.widget;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.Config;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TooltipPopup {
    public Object mContentView;
    public Object mContext;
    public Object mLayoutParams;
    public Object mMessageView;
    public Object mTmpAnchorPos;
    public Object mTmpAppPos;
    public Object mTmpDisplayFrame;

    public AutoValue_StreamSpec build() {
        String str = ((Size) this.mContext) == null ? " resolution" : "";
        if (((Size) this.mContentView) == null) {
            str = str.concat(" originalConfiguredResolution");
        }
        if (((DynamicRange) this.mMessageView) == null) {
            str = str.concat(" dynamicRange");
        }
        if (((Integer) this.mLayoutParams) == null) {
            str = str.concat(" sessionType");
        }
        if (((Range) this.mTmpDisplayFrame) == null) {
            str = str.concat(" expectedFrameRateRange");
        }
        if (((Boolean) this.mTmpAppPos) == null) {
            str = str.concat(" zslDisabled");
        }
        if (str.isEmpty()) {
            return new AutoValue_StreamSpec((Size) this.mContext, (Size) this.mContentView, (DynamicRange) this.mMessageView, ((Integer) this.mLayoutParams).intValue(), (Range) this.mTmpDisplayFrame, (Config) this.mTmpAnchorPos, ((Boolean) this.mTmpAppPos).booleanValue());
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing required properties:".concat(str));
        return null;
    }
}
