package androidx.camera.camera2.pipe.media;

import android.media.ImageWriter;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidImageWriter implements ImageWriter.OnImageReleasedListener, UnsafeWrapper, AutoCloseable {
    public final ImageWriter imageWriter;
    public final int inputStreamId;
    public final AtomicRef onImageReleasedListener = AtomicFU.atomic((Object) null);

    public AndroidImageWriter(ImageWriter imageWriter, int i) {
        this.imageWriter = imageWriter;
        this.inputStreamId = i;
        imageWriter.getMaxImages();
        imageWriter.getFormat();
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.imageWriter.close();
    }

    @Override // android.media.ImageWriter.OnImageReleasedListener
    public final void onImageReleased(ImageWriter imageWriter) {
        if (this.onImageReleasedListener.value == null) {
            return;
        }
        DBUtil$$ExternalSyntheticBUOutline0.m();
    }

    public final String toString() {
        return "ImageWriter-" + StreamFormat.m44getNameimpl(this.imageWriter.getFormat()) + '-' + ((Object) ("Input-" + this.inputStreamId));
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        if (classReference.equals(Reflection.getOrCreateKotlinClass(ImageWriter.class))) {
            return this.imageWriter;
        }
        return null;
    }
}
