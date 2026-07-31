package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import androidx.compose.animation.core.Animation;
import j$.util.Objects;
import java.util.Locale;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContentInfoCompat {
    public final Compat mCompat;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface BuilderCompat {
        ContentInfoCompat build();

        void setClip(ClipData clipData);

        void setExtras(Bundle bundle);

        void setFlags(int i);

        void setLinkUri(Uri uri);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Compat {
        ClipData getClip();

        Bundle getExtras();

        int getFlags();

        Uri getLinkUri();

        int getSource();

        ContentInfo getWrapped();
    }

    public ContentInfoCompat(Compat compat) {
        this.mCompat = compat;
    }

    public final ContentInfo toContentInfo() {
        ContentInfo wrapped = this.mCompat.getWrapped();
        Objects.requireNonNull(wrapped);
        return wrapped;
    }

    public final String toString() {
        return this.mCompat.toString();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CompatImpl implements BuilderCompat, Compat {
        public final /* synthetic */ int $r8$classId;
        public Object mClip;
        public Cloneable mExtras;
        public int mFlags;
        public Object mLinkUri;
        public int mSource;

        public CompatImpl(CompatImpl compatImpl) {
            this.$r8$classId = 0;
            ClipData clipData = (ClipData) compatImpl.mClip;
            clipData.getClass();
            this.mClip = clipData;
            int i = compatImpl.mSource;
            if (i < 0) {
                Locale locale = Locale.US;
                _UtilJvmKt$$ExternalSyntheticLambda0.m("source is out of range of [0, 5] (too low)");
                throw null;
            }
            if (i > 5) {
                Locale locale2 = Locale.US;
                _UtilJvmKt$$ExternalSyntheticLambda0.m("source is out of range of [0, 5] (too high)");
                throw null;
            }
            this.mSource = i;
            int i2 = compatImpl.mFlags;
            if ((i2 & 1) == i2) {
                this.mFlags = i2;
                this.mLinkUri = (Uri) compatImpl.mLinkUri;
                this.mExtras = (Bundle) compatImpl.mExtras;
                return;
            }
            throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i2) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
        }

        /* JADX WARN: Type inference failed for: r1v9, types: [int[], java.lang.Cloneable] */
        public int add(long j) {
            int i = this.mSource + 1;
            long[] jArr = (long[]) this.mClip;
            int length = jArr.length;
            if (i > length) {
                int i2 = length * 2;
                long[] jArr2 = new long[i2];
                int[] iArr = new int[i2];
                ArraysKt___ArraysKt.copyInto(jArr, jArr2, 0, 0, jArr.length);
                ArraysKt___ArraysKt.copyInto$default(0, 0, 14, (int[]) this.mLinkUri, iArr);
                this.mClip = jArr2;
                this.mLinkUri = iArr;
            }
            int i3 = this.mSource;
            this.mSource = i3 + 1;
            int[] iArr2 = (int[]) this.mExtras;
            int length2 = iArr2.length;
            int[] iArr3 = iArr2;
            if (this.mFlags >= length2) {
                int i4 = length2 * 2;
                ?? r1 = new int[i4];
                int i5 = 0;
                while (i5 < i4) {
                    int i6 = i5 + 1;
                    r1[i5] = i6;
                    i5 = i6;
                }
                ArraysKt___ArraysKt.copyInto$default(0, 0, 14, (int[]) this.mExtras, (int[]) r1);
                this.mExtras = r1;
                iArr3 = r1;
            }
            int[] iArr4 = iArr3;
            int i7 = this.mFlags;
            this.mFlags = iArr3[i7];
            long[] jArr3 = (long[]) this.mClip;
            jArr3[i3] = j;
            ((int[]) this.mLinkUri)[i3] = i7;
            iArr4[i7] = i3;
            while (i3 > 0) {
                int i8 = ((i3 + 1) >> 1) - 1;
                if (Intrinsics.compare(jArr3[i8], j) <= 0) {
                    break;
                }
                swap(i8, i3);
                i3 = i8;
            }
            return i7;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new CompatImpl(this));
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public ClipData getClip() {
            return (ClipData) this.mClip;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public Bundle getExtras() {
            return (Bundle) this.mExtras;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int getFlags() {
            return this.mFlags;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public Uri getLinkUri() {
            return (Uri) this.mLinkUri;
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
        public void setClip(ClipData clipData) {
            this.mClip = clipData;
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

        public void swap(int i, int i2) {
            long[] jArr = (long[]) this.mClip;
            int[] iArr = (int[]) this.mLinkUri;
            int[] iArr2 = (int[]) this.mExtras;
            long j = jArr[i];
            jArr[i] = jArr[i2];
            jArr[i2] = j;
            int i3 = iArr[i];
            int i4 = iArr[i2];
            iArr[i] = i4;
            iArr[i2] = i3;
            iArr2[i4] = i;
            iArr2[i3] = i2;
        }

        public String toString() {
            String str;
            switch (this.$r8$classId) {
                case 0:
                    Uri uri = (Uri) this.mLinkUri;
                    StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
                    sb.append(((ClipData) this.mClip).getDescription());
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
                    return Animation.CC.m(sb, ((Bundle) this.mExtras) != null ? ", hasExtras" : "", "}");
                default:
                    return super.toString();
            }
        }
    }
}
