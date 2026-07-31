package com.skydoves.landscapist.coil3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.ImageBitmap;
import coil3.Image;
import com.skydoves.landscapist.DataSource;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CoilImageState {
    public static final int $stable = 0;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Failure extends CoilImageState {
        public static final int $stable = 0;
        private final Image errorImage;
        private final Throwable reason;

        public Failure(Image image, Throwable th) {
            super(null);
            this.errorImage = image;
            this.reason = th;
        }

        public static /* synthetic */ Failure copy$default(Failure failure, Image image, Throwable th, int i, Object obj) {
            if ((i & 1) != 0) {
                image = failure.errorImage;
            }
            if ((i & 2) != 0) {
                th = failure.reason;
            }
            return failure.copy(image, th);
        }

        public final Image component1() {
            return this.errorImage;
        }

        public final Throwable component2() {
            return this.reason;
        }

        public final Failure copy(Image image, Throwable th) {
            return new Failure(image, th);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Failure)) {
                return false;
            }
            Failure failure = (Failure) obj;
            return Intrinsics.areEqual(this.errorImage, failure.errorImage) && Intrinsics.areEqual(this.reason, failure.reason);
        }

        public final Image getErrorImage() {
            return this.errorImage;
        }

        public final Throwable getReason() {
            return this.reason;
        }

        public int hashCode() {
            Image image = this.errorImage;
            int hashCode = (image == null ? 0 : image.hashCode()) * 31;
            Throwable th = this.reason;
            return hashCode + (th != null ? th.hashCode() : 0);
        }

        public String toString() {
            return "Failure(errorImage=" + this.errorImage + ", reason=" + this.reason + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Loading extends CoilImageState {
        public static final int $stable = 0;
        public static final Loading INSTANCE = new Loading();

        private Loading() {
            super(null);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public int hashCode() {
            return 1285072628;
        }

        public String toString() {
            return "Loading";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class None extends CoilImageState {
        public static final int $stable = 0;
        public static final None INSTANCE = new None();

        private None() {
            super(null);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof None);
        }

        public int hashCode() {
            return 1897956480;
        }

        public String toString() {
            return "None";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Success extends CoilImageState {
        public static final int $stable = 0;
        private final DataSource dataSource;
        private final Image image;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(Image image, DataSource dataSource) {
            super(null);
            dataSource.getClass();
            this.image = image;
            this.dataSource = dataSource;
        }

        public static /* synthetic */ Success copy$default(Success success, Image image, DataSource dataSource, int i, Object obj) {
            if ((i & 1) != 0) {
                image = success.image;
            }
            if ((i & 2) != 0) {
                dataSource = success.dataSource;
            }
            return success.copy(image, dataSource);
        }

        public final Image component1() {
            return this.image;
        }

        public final DataSource component2() {
            return this.dataSource;
        }

        public final Success copy(Image image, DataSource dataSource) {
            dataSource.getClass();
            return new Success(image, dataSource);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return Intrinsics.areEqual(this.image, success.image) && this.dataSource == success.dataSource;
        }

        public final DataSource getDataSource() {
            return this.dataSource;
        }

        public final Image getImage() {
            return this.image;
        }

        public final ImageBitmap getImageBitmap(Composer composer, int i) {
            Image image = this.image;
            GapComposer gapComposer = (GapComposer) composer;
            if (image == null) {
                gapComposer.startReplaceGroup(-1295313843);
                gapComposer.end(false);
                return null;
            }
            gapComposer.startReplaceGroup(1620783668);
            ImageBitmap imageBitmap = PlatformsKt.toImageBitmap(image, gapComposer, 0);
            gapComposer.end(false);
            return imageBitmap;
        }

        public int hashCode() {
            Image image = this.image;
            return this.dataSource.hashCode() + ((image == null ? 0 : image.hashCode()) * 31);
        }

        public String toString() {
            return "Success(image=" + this.image + ", dataSource=" + this.dataSource + ")";
        }
    }

    public /* synthetic */ CoilImageState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private CoilImageState() {
    }
}
