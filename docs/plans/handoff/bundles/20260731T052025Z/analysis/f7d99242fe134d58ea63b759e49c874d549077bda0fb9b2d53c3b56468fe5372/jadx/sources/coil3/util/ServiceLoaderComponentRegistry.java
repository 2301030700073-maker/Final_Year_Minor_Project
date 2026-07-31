package coil3.util;

import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.Lazy;
import kotlin.SynchronizedLazyImpl;
import kotlin.sequences.SequencesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ServiceLoaderComponentRegistry {
    public static final ServiceLoaderComponentRegistry INSTANCE = new ServiceLoaderComponentRegistry();
    private static final Lazy fetchers$delegate = new SynchronizedLazyImpl(new SyncDebugWorker$$ExternalSyntheticLambda0(5));
    private static final Lazy decoders$delegate = new SynchronizedLazyImpl(new SyncDebugWorker$$ExternalSyntheticLambda0(6));

    private ServiceLoaderComponentRegistry() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List decoders_delegate$lambda$0() {
        return Collections_jvmCommonKt.toImmutableList(SequencesKt.toList(SequencesKt.asSequence(ServiceLoader.load(DecoderServiceLoaderTarget.class, DecoderServiceLoaderTarget.class.getClassLoader()).iterator())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List fetchers_delegate$lambda$0() {
        return Collections_jvmCommonKt.toImmutableList(SequencesKt.toList(SequencesKt.asSequence(ServiceLoader.load(FetcherServiceLoaderTarget.class, FetcherServiceLoaderTarget.class.getClassLoader()).iterator())));
    }

    public final List<DecoderServiceLoaderTarget> getDecoders() {
        return (List) decoders$delegate.getValue();
    }

    public final List<FetcherServiceLoaderTarget<?>> getFetchers() {
        return (List) fetchers$delegate.getValue();
    }

    public final void register(FetcherServiceLoaderTarget<?> fetcherServiceLoaderTarget) {
        throw new UnsupportedOperationException();
    }

    public final void register(DecoderServiceLoaderTarget decoderServiceLoaderTarget) {
        throw new UnsupportedOperationException();
    }
}
