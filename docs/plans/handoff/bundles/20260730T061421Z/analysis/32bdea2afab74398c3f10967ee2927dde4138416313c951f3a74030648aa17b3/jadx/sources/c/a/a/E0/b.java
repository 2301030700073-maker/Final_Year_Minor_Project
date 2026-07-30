package c.a.a.E0;

import com.android.launcher3.anim.AnimatorPlaybackController;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements AnimatorPlaybackController.ProgressMapper {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ b f1269a = new b();

    @Override // com.android.launcher3.anim.AnimatorPlaybackController.ProgressMapper
    public final float getProgress(float f, float f2) {
        if (f > f2) {
            return 1.0f;
        }
        return f / f2;
    }
}
