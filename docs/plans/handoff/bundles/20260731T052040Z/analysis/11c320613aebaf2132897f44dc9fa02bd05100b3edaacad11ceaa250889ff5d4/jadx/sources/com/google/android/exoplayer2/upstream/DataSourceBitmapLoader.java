package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import androidx.work.impl.WorkerWrapper$launch$1$$ExternalSyntheticLambda0;
import coil3.decode.StaticImageDecoderKt$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.BitmapLoader;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers$MemoizingSupplier;
import com.google.common.base.Suppliers$NonSerializableMemoizingSupplier;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors$ListeningDecorator;
import com.google.common.util.concurrent.MoreExecutors$ScheduledListeningDecorator;
import java.io.Serializable;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class DataSourceBitmapLoader implements BitmapLoader {
    public static final Supplier DEFAULT_EXECUTOR_SERVICE;
    private final DataSource.Factory dataSourceFactory;
    private final ListeningExecutorService listeningExecutorService;

    static {
        Supplier supplier;
        DataSourceBitmapLoader$$ExternalSyntheticLambda0 dataSourceBitmapLoader$$ExternalSyntheticLambda0 = new DataSourceBitmapLoader$$ExternalSyntheticLambda0();
        if (dataSourceBitmapLoader$$ExternalSyntheticLambda0 instanceof Serializable) {
            supplier = new Suppliers$MemoizingSupplier(dataSourceBitmapLoader$$ExternalSyntheticLambda0);
        } else {
            Suppliers$NonSerializableMemoizingSupplier suppliers$NonSerializableMemoizingSupplier = new Suppliers$NonSerializableMemoizingSupplier();
            suppliers$NonSerializableMemoizingSupplier.delegate = dataSourceBitmapLoader$$ExternalSyntheticLambda0;
            supplier = suppliers$NonSerializableMemoizingSupplier;
        }
        DEFAULT_EXECUTOR_SERVICE = supplier;
    }

    public DataSourceBitmapLoader(Context context) {
        this((ListeningExecutorService) Assertions.checkStateNotNull((ListeningExecutorService) DEFAULT_EXECUTOR_SERVICE.get()), new DefaultDataSource.Factory(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap decode(byte[] bArr) {
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        Assertions.checkArgument(decodeByteArray != null, "Could not decode image data");
        return decodeByteArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap lambda$loadBitmap$2(Uri uri) {
        return load(this.dataSourceFactory.createDataSource(), uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ListeningExecutorService lambda$static$0() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        return newSingleThreadExecutor instanceof ListeningExecutorService ? (ListeningExecutorService) newSingleThreadExecutor : newSingleThreadExecutor instanceof ScheduledExecutorService ? new MoreExecutors$ScheduledListeningDecorator((ScheduledExecutorService) newSingleThreadExecutor) : new MoreExecutors$ListeningDecorator(newSingleThreadExecutor);
    }

    private static Bitmap load(DataSource dataSource, Uri uri) {
        dataSource.open(new DataSpec(uri));
        return decode(DataSourceUtil.readToEnd(dataSource));
    }

    @Override // com.google.android.exoplayer2.util.BitmapLoader
    public ListenableFuture decodeBitmap(byte[] bArr) {
        return ((MoreExecutors$ListeningDecorator) this.listeningExecutorService).submit((Callable) new StaticImageDecoderKt$$ExternalSyntheticLambda0(bArr, 1));
    }

    @Override // com.google.android.exoplayer2.util.BitmapLoader
    public ListenableFuture loadBitmap(Uri uri) {
        return ((MoreExecutors$ListeningDecorator) this.listeningExecutorService).submit((Callable) new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(this, uri, 1));
    }

    @Override // com.google.android.exoplayer2.util.BitmapLoader
    public final ListenableFuture loadBitmapFromMetadata(MediaMetadata mediaMetadata) {
        byte[] bArr = mediaMetadata.artworkData;
        if (bArr != null) {
            return decodeBitmap(bArr);
        }
        Uri uri = mediaMetadata.artworkUri;
        if (uri != null) {
            return loadBitmap(uri);
        }
        return null;
    }

    public DataSourceBitmapLoader(ListeningExecutorService listeningExecutorService, DataSource.Factory factory) {
        this.listeningExecutorService = listeningExecutorService;
        this.dataSourceFactory = factory;
    }
}
