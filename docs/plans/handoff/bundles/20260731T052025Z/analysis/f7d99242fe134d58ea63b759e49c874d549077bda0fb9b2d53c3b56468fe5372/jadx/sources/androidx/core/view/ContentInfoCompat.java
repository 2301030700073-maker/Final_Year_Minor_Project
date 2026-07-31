package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.room.util.RelationUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContentInfoCompat {
    public final Compat mCompat;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface BuilderCompat {
        ContentInfoCompat build();

        void setExtras(Bundle bundle);

        void setFlags(int i);

        void setLinkUri(Uri uri);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Compat {
        ClipData getClip();

        int getFlags();

        int getSource();

        ContentInfo getWrapped();
    }

    public ContentInfoCompat(Compat compat) {
        this.mCompat = compat;
    }

    public final String toString() {
        return this.mCompat.toString();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CompatImpl implements BuilderCompat, Compat {
        public final /* synthetic */ int $r8$classId = 1;
        public ClipData mClip;
        public Bundle mExtras;
        public int mFlags;
        public Uri mLinkUri;
        public int mSource;

        public CompatImpl(CompatImpl compatImpl) {
            ClipData clipData = compatImpl.mClip;
            clipData.getClass();
            this.mClip = clipData;
            int i = compatImpl.mSource;
            RelationUtil.checkArgumentInRange(i, 0, 5, "source");
            this.mSource = i;
            int i2 = compatImpl.mFlags;
            if ((i2 & 1) != i2) {
                DifferentialMotionFlingController$$ExternalSyntheticLambda0.m("Requested flags 0x", Integer.toHexString(i2), ", but only 0x", Integer.toHexString(1), " are allowed");
                throw null;
            }
            this.mFlags = i2;
            this.mLinkUri = compatImpl.mLinkUri;
            this.mExtras = compatImpl.mExtras;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new CompatImpl(this));
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public ClipData getClip() {
            return this.mClip;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int getFlags() {
            return this.mFlags;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int getSource() {
            return this.mSource;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public ContentInfo getWrapped() {
            return null;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setExtras(Bundle bundle) {
            this.mExtras = bundle;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setFlags(int i) {
            this.mFlags = i;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setLinkUri(Uri uri) {
            this.mLinkUri = uri;
        }

        public String toString() {
            String str;
            switch (this.$r8$classId) {
                case 0:
                    Uri uri = this.mLinkUri;
                    StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
                    sb.append(this.mClip.getDescription());
                    sb.append(", source=");
                    int i = this.mSource;
                    sb.append(i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? String.valueOf(i) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
                    sb.append(", flags=");
                    int i2 = this.mFlags;
                    sb.append((i2 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i2));
                    if (uri == null) {
                        str = "";
                    } else {
                        str = ", hasLinkUri(" + uri.toString().length() + ")";
                    }
                    sb.append(str);
                    return CameraDevices$CC.m(sb, this.mExtras != null ? ", hasExtras" : "", "}");
                default:
                    return super.toString();
            }
        }

        public /* synthetic */ CompatImpl() {
        }
    }
}
