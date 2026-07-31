package androidx.work;

import android.content.Context;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ListenableWorker {
    public final Context mAppContext;
    public final AtomicInteger mStopReason = new AtomicInteger(-256);
    public boolean mUsed;
    public final WorkerParameters mWorkerParams;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Result {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Failure extends Result {
            public final Data mOutputData = Data.EMPTY;

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || Failure.class != obj.getClass()) {
                    return false;
                }
                return this.mOutputData.equals(((Failure) obj).mOutputData);
            }

            public final int hashCode() {
                return this.mOutputData.hashCode() + 846803280;
            }

            public final String toString() {
                return "Failure {mOutputData=" + this.mOutputData + '}';
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Retry extends Result {
            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && Retry.class == obj.getClass();
            }

            public final int hashCode() {
                return 25945934;
            }

            public final String toString() {
                return "Retry";
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Success extends Result {
            public final Data mOutputData;

            public Success(Data data) {
                this.mOutputData = data;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || Success.class != obj.getClass()) {
                    return false;
                }
                return this.mOutputData.equals(((Success) obj).mOutputData);
            }

            public final int hashCode() {
                return this.mOutputData.hashCode() - 1876823561;
            }

            public final String toString() {
                return "Success {mOutputData=" + this.mOutputData + '}';
            }
        }

        public static Success success() {
            return new Success(Data.EMPTY);
        }
    }

    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        this.mAppContext = context;
        this.mWorkerParams = workerParameters;
    }

    public abstract CallbackToFutureAdapter$SafeFuture getForegroundInfoAsync();

    public final Data getInputData() {
        return this.mWorkerParams.mInputData;
    }

    public abstract CallbackToFutureAdapter$SafeFuture startWork();
}
