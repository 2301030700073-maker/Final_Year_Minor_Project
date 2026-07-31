package com.skydoves.landscapist;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ImageLoadState {
    public static final int $stable = 0;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Failure extends ImageLoadState {
        public static final int $stable = 0;
        private final Object data;
        private final Throwable reason;

        public Failure(Object obj, Throwable th) {
            super(null);
            this.data = obj;
            this.reason = th;
        }

        public static /* synthetic */ Failure copy$default(Failure failure, Object obj, Throwable th, int i, Object obj2) {
            if ((i & 1) != 0) {
                obj = failure.data;
            }
            if ((i & 2) != 0) {
                th = failure.reason;
            }
            return failure.copy(obj, th);
        }

        public final Object component1() {
            return this.data;
        }

        public final Throwable component2() {
            return this.reason;
        }

        public final Failure copy(Object obj, Throwable th) {
            return new Failure(obj, th);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Failure)) {
                return false;
            }
            Failure failure = (Failure) obj;
            return Intrinsics.areEqual(this.data, failure.data) && Intrinsics.areEqual(this.reason, failure.reason);
        }

        public final Object getData() {
            return this.data;
        }

        public final Throwable getReason() {
            return this.reason;
        }

        public int hashCode() {
            Object obj = this.data;
            int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
            Throwable th = this.reason;
            return hashCode + (th != null ? th.hashCode() : 0);
        }

        public String toString() {
            return "Failure(data=" + this.data + ", reason=" + this.reason + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Loading extends ImageLoadState {
        public static final int $stable = 0;
        public static final Loading INSTANCE = new Loading();

        private Loading() {
            super(null);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public int hashCode() {
            return -1940380715;
        }

        public String toString() {
            return "Loading";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class None extends ImageLoadState {
        public static final int $stable = 0;
        public static final None INSTANCE = new None();

        private None() {
            super(null);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof None);
        }

        public int hashCode() {
            return -393733313;
        }

        public String toString() {
            return "None";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Success extends ImageLoadState {
        public static final int $stable = 0;
        private final Object data;
        private final DataSource dataSource;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(Object obj, DataSource dataSource) {
            super(null);
            dataSource.getClass();
            this.data = obj;
            this.dataSource = dataSource;
        }

        public static /* synthetic */ Success copy$default(Success success, Object obj, DataSource dataSource, int i, Object obj2) {
            if ((i & 1) != 0) {
                obj = success.data;
            }
            if ((i & 2) != 0) {
                dataSource = success.dataSource;
            }
            return success.copy(obj, dataSource);
        }

        public final Object component1() {
            return this.data;
        }

        public final DataSource component2() {
            return this.dataSource;
        }

        public final Success copy(Object obj, DataSource dataSource) {
            dataSource.getClass();
            return new Success(obj, dataSource);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return Intrinsics.areEqual(this.data, success.data) && this.dataSource == success.dataSource;
        }

        public final Object getData() {
            return this.data;
        }

        public final DataSource getDataSource() {
            return this.dataSource;
        }

        public int hashCode() {
            Object obj = this.data;
            return this.dataSource.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31);
        }

        public String toString() {
            return "Success(data=" + this.data + ", dataSource=" + this.dataSource + ")";
        }
    }

    public /* synthetic */ ImageLoadState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private ImageLoadState() {
    }
}
