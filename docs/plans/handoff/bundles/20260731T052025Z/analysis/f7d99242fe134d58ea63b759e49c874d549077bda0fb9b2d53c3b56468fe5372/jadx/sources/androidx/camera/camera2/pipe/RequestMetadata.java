package androidx.camera.camera2.pipe;

import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface RequestMetadata extends Metadata, UnsafeWrapper {
    boolean getRepeating();

    Request getRequest();

    /* renamed from: getRequestNumber-my6kx4g */
    long mo20getRequestNumbermy6kx4g();

    Map getStreams();
}
