package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Brush.kt */
/* loaded from: classes.dex */
public abstract class ShaderBrush extends Brush {
    private long createdSize;
    private Shader internalShader;

    /* renamed from: createShader-uvyYCjk */
    public abstract Shader mo1289createShaderuvyYCjk(long j);

    public ShaderBrush() {
        super(null);
        this.createdSize = Size.Companion.m1209getUnspecifiedNHjbRc();
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* renamed from: applyTo-Pq9zytI */
    public final void mo1288applyToPq9zytI(long j, Paint paint, float f) {
        Shader shader = this.internalShader;
        if (shader == null || !Size.m1201equalsimpl0(this.createdSize, j)) {
            if (Size.m1206isEmptyimpl(j)) {
                shader = null;
                this.internalShader = null;
                this.createdSize = Size.Companion.m1209getUnspecifiedNHjbRc();
            } else {
                shader = mo1289createShaderuvyYCjk(j);
                this.internalShader = shader;
                this.createdSize = j;
            }
        }
        long mo1231getColor0d7_KjU = paint.mo1231getColor0d7_KjU();
        Color.Companion companion = Color.Companion;
        if (!Color.m1304equalsimpl0(mo1231getColor0d7_KjU, companion.m1313getBlack0d7_KjU())) {
            paint.mo1236setColor8_81llA(companion.m1313getBlack0d7_KjU());
        }
        if (!Intrinsics.areEqual(paint.getShader(), shader)) {
            paint.setShader(shader);
        }
        if (paint.getAlpha() == f) {
            return;
        }
        paint.setAlpha(f);
    }
}
