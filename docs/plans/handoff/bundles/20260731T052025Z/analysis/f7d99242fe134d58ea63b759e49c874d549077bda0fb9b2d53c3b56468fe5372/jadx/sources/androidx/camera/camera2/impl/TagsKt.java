package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.core.impl.TagBundle;
import androidx.room.util.DBUtil;
import java.util.HashMap;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TagsKt {
    public static final Metadata.Key CAMERAX_TAG_BUNDLE;
    public static final Metadata.Key USE_CASE_CAMERA_STATE_CUSTOM_TAG;

    static {
        HashMap hashMap = Metadata.Key.keys;
        CAMERAX_TAG_BUNDLE = DBUtil.create("camerax.tag_bundle", Reflection.getOrCreateKotlinClass(TagBundle.class));
        USE_CASE_CAMERA_STATE_CUSTOM_TAG = DBUtil.create("use_case_camera_state.tag", Reflection.getOrCreateKotlinClass(Integer.class));
    }
}
