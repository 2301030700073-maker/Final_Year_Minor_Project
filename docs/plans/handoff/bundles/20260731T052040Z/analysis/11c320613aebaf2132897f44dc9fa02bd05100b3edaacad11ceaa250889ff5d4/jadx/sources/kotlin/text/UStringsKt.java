package kotlin.text;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import androidx.compose.foundation.pager.PagerMeasureResult;
import androidx.compose.material3.ListItemKt;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout$BeyondBoundsScope;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.DensityImpl;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.room.PooledConnection;
import androidx.transition.Transition;
import androidx.work.Data$$ExternalSyntheticLambda0;
import coil3.decode.StaticImageDecoderKt;
import coil3.network.NetworkHeaders;
import coil3.network.NetworkResponse;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.ScalarSubscription;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import kotlin.ResultKt;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import net.newpipe.app.AppKt;
import net.newpipe.app.model.Developer;
import net.newpipe.app.model.Library;
import newpipe.shared.generated.resources.String0_commonMainKt;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.internal.ZipFilesKt;
import org.jetbrains.compose.resources.ResourceEnvironment;
import org.jetbrains.compose.resources.ResourceEnvironmentKt;
import org.jetbrains.compose.resources.ResourceEnvironmentKt$DefaultComposeEnvironment$1;
import org.jetbrains.compose.resources.ResourceReader;
import org.jetbrains.compose.resources.ResourceReaderKt;
import org.jetbrains.compose.resources.ResourceState_blockingKt$rememberResourceState$2$1;
import org.jetbrains.compose.resources.StringResource;
import org.jetbrains.compose.resources.StringResourcesKt;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$7$1;
import org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda0;
import org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda2;
import org.koin.core.scope.Scope;
import org.koin.viewmodel.factory.KoinViewModelFactory;
import org.mozilla.javascript.Token;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.SparseItemUtil$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.SparseItemUtil$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class UStringsKt {
    public static boolean sTryHiddenSuppressLayout = true;

    public static DensityImpl Density$default() {
        return new DensityImpl(1.0f, 1.0f);
    }

    public static final void LibraryListItem(Modifier modifier, Library library, Function0 function0, Composer composer, int i) {
        Modifier modifier2;
        String stringResource;
        library.getClass();
        List list = library.developers;
        List list2 = library.licenses;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1406005674);
        int i2 = 16;
        int i3 = i | 6 | (gapComposer.changed(library) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & Token.EXPR_VOID) != 146)) {
            if (list.isEmpty() || list2.isEmpty()) {
                gapComposer.startReplaceGroup(-1793565748);
                stringResource = StringResourcesKt.stringResource((StringResource) String0_commonMainKt.not_available$delegate.getValue(), gapComposer);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1793757607);
                StringResource stringResource2 = (StringResource) String0_commonMainKt.license$delegate.getValue();
                Object[] objArr = {((Developer) CollectionsKt.first(list)).name, CollectionsKt.first(list2)};
                stringResource2.getClass();
                ResourceReader currentOrPreview = StringResourcesKt.getCurrentOrPreview(ResourceReaderKt.LocalResourceReader, gapComposer);
                ArrayList arrayList = new ArrayList(2);
                for (int i4 = 0; i4 < 2; i4++) {
                    arrayList.add(objArr[i4].toString());
                }
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = new KoinApplicationKt$$ExternalSyntheticLambda0(3);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function0 function02 = (Function0) rememberedValue;
                boolean changed = gapComposer.changed(stringResource2) | gapComposer.changedInstance(arrayList) | gapComposer.changedInstance(currentOrPreview);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new StringResourcesKt$stringResource$str$7$1(stringResource2, arrayList, currentOrPreview, null);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Function2 function2 = (Function2) rememberedValue2;
                function02.getClass();
                function2.getClass();
                ((ResourceEnvironmentKt$DefaultComposeEnvironment$1) gapComposer.consume(ResourceEnvironmentKt.LocalComposeEnvironment)).getClass();
                ResourceEnvironment rememberEnvironment = ResourceEnvironmentKt$DefaultComposeEnvironment$1.rememberEnvironment(gapComposer);
                boolean changed2 = gapComposer.changed(stringResource2) | gapComposer.changed(arrayList) | gapComposer.changed(rememberEnvironment);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = Updater.mutableStateOf$default(JobKt.runBlocking(EmptyCoroutineContext.INSTANCE, new ResourceState_blockingKt$rememberResourceState$2$1(function2, rememberEnvironment, null)));
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                stringResource = (String) ((MutableState) rememberedValue3).getValue();
                gapComposer.end(false);
            }
            ListItemKt.ListItem(function0, !list2.isEmpty(), null, null, null, null, null, Expect_jvmKt.rememberComposableLambda(-1702124068, new TextKt$$ExternalSyntheticLambda2(library, stringResource, i2), gapComposer), gapComposer, ((i3 >> 6) & 14) | 48);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new KoinApplicationKt$$ExternalSyntheticLambda2(modifier2, library, function0, i, 4);
        }
    }

    public static Object access$000(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() != 0) {
            return creator.createFromParcel(parcel);
        }
        return null;
    }

    public static final boolean arrayRangeEquals(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        bArr.getClass();
        bArr2.getClass();
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            StringBuilder m = Modifier.CC.m(j, "size=", " offset=");
            m.append(j2);
            m.append(" byteCount=");
            m.append(j3);
            throw new ArrayIndexOutOfBoundsException(m.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Continuation createCoroutineUnintercepted(final Continuation continuation, final Continuation continuation2, final Function2 function2) {
        function2.getClass();
        if (function2 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function2).create(continuation, continuation2);
        }
        final CoroutineContext context = continuation2.getContext();
        return context == EmptyCoroutineContext.INSTANCE ? new RestrictedContinuationImpl(continuation2) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3
            private int label;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This coroutine had already completed");
                        return null;
                    }
                    this.label = 2;
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                this.label = 1;
                ResultKt.throwOnFailure(obj);
                function2.getClass();
                Function2 function22 = function2;
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function22);
                return function22.invoke(continuation, this);
            }
        } : new ContinuationImpl(continuation2, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4
            private int label;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This coroutine had already completed");
                        return null;
                    }
                    this.label = 2;
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                this.label = 1;
                ResultKt.throwOnFailure(obj);
                function2.getClass();
                Function2 function22 = function2;
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function22);
                return function22.invoke(continuation, this);
            }
        };
    }

    public static Bitmap createScaledBitmap(Bitmap bitmap, int i, int i2) {
        double d;
        double floor;
        int i3;
        int i4;
        boolean z;
        char c;
        Bitmap bitmap2 = null;
        if (i <= 0 || i2 <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("dstW and dstH must be > 0!");
            return null;
        }
        int i5 = Build.VERSION.SDK_INT;
        Bitmap copyBitmapIfHardware = i5 >= 27 ? Transition.Impl26.copyBitmapIfHardware(bitmap) : bitmap;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f = i / width;
        float f2 = i2 / height;
        if (i == bitmap.getWidth() && i2 == bitmap.getHeight()) {
            return (bitmap.isMutable() && bitmap == copyBitmapIfHardware) ? bitmap.copy(bitmap.getConfig(), true) : copyBitmapIfHardware;
        }
        Paint paint = new Paint(1);
        paint.setFilterBitmap(true);
        if (i5 >= 29) {
            StaticImageDecoderKt.setPaintBlendMode(paint);
        } else {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        }
        if (width == i && height == i2) {
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, copyBitmapIfHardware.getConfig());
            new Canvas(createBitmap).drawBitmap(copyBitmapIfHardware, -0, -0, paint);
            return createBitmap;
        }
        double log = Math.log(2.0d);
        if (f > 1.0f) {
            d = log;
            floor = Math.ceil(Math.log(f) / d);
        } else {
            d = log;
            floor = Math.floor(Math.log(f) / d);
        }
        int i6 = (int) floor;
        int ceil = (int) (f2 > 1.0f ? Math.ceil(Math.log(f2) / d) : Math.floor(Math.log(f2) / d));
        if (i5 < 27 || Transition.Impl26.isAlreadyF16AndLinear(bitmap)) {
            i3 = 0;
            i4 = 0;
        } else {
            Bitmap createBitmapWithSourceColorspace = Transition.Impl26.createBitmapWithSourceColorspace(i6 > 0 ? sizeAtStep(width, i, 1, i6) : width, ceil > 0 ? sizeAtStep(height, i2, 1, ceil) : height, bitmap, true);
            i3 = 0;
            new Canvas(createBitmapWithSourceColorspace).drawBitmap(copyBitmapIfHardware, -0, -0, paint);
            Bitmap bitmap3 = copyBitmapIfHardware;
            copyBitmapIfHardware = createBitmapWithSourceColorspace;
            bitmap2 = bitmap3;
            i4 = 1;
        }
        Rect rect = new Rect(i3, i3, width, height);
        Rect rect2 = new Rect();
        int i7 = i6;
        int i8 = ceil;
        while (true) {
            if (i7 == 0 && i8 == 0) {
                break;
            }
            if (i7 < 0) {
                i7++;
            } else if (i7 > 0) {
                i7--;
            }
            if (i8 < 0) {
                i8++;
            } else if (i8 > 0) {
                i8--;
            }
            int i9 = i8;
            int i10 = i4;
            rect2.set(0, 0, sizeAtStep(width, i, i7, i6), sizeAtStep(height, i2, i9, ceil));
            boolean z2 = i7 == 0 && i9 == 0;
            boolean z3 = bitmap2 != null && bitmap2.getWidth() == i && bitmap2.getHeight() == i2;
            if (bitmap2 == null || bitmap2 == bitmap) {
                z = z2;
            } else {
                z = z2;
                if ((Build.VERSION.SDK_INT < 27 || Transition.Impl26.isAlreadyF16AndLinear(bitmap2)) && (!z || (z3 && i10 == 0))) {
                    c = 27;
                    new Canvas(bitmap2).drawBitmap(copyBitmapIfHardware, rect, rect2, paint);
                    rect.set(rect2);
                    Bitmap bitmap4 = copyBitmapIfHardware;
                    copyBitmapIfHardware = bitmap2;
                    bitmap2 = bitmap4;
                    i4 = i10;
                    i8 = i9;
                }
            }
            if (bitmap2 != bitmap && bitmap2 != null) {
                bitmap2.recycle();
            }
            int sizeAtStep = sizeAtStep(width, i, i7 > 0 ? i10 : i7, i6);
            int sizeAtStep2 = sizeAtStep(height, i2, i9 > 0 ? i10 : i9, ceil);
            c = 27;
            bitmap2 = Build.VERSION.SDK_INT >= 27 ? Transition.Impl26.createBitmapWithSourceColorspace(sizeAtStep, sizeAtStep2, bitmap, !z) : Bitmap.createBitmap(sizeAtStep, sizeAtStep2, copyBitmapIfHardware.getConfig());
            new Canvas(bitmap2).drawBitmap(copyBitmapIfHardware, rect, rect2, paint);
            rect.set(rect2);
            Bitmap bitmap42 = copyBitmapIfHardware;
            copyBitmapIfHardware = bitmap2;
            bitmap2 = bitmap42;
            i4 = i10;
            i8 = i9;
        }
        if (bitmap2 != bitmap && bitmap2 != null) {
            bitmap2.recycle();
        }
        return copyBitmapIfHardware;
    }

    public static boolean equal(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m675equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static final Object execSQL(PooledConnection pooledConnection, String str, ContinuationImpl continuationImpl) {
        Object usePrepared = pooledConnection.usePrepared(str, new Data$$ExternalSyntheticLambda0(2), continuationImpl);
        return usePrepared == CoroutineSingletons.COROUTINE_SUSPENDED ? usePrepared : Unit.INSTANCE;
    }

    public static void fetchItemInfoIfSparse(Context context, StreamInfoItem streamInfoItem, Consumer consumer) {
        if ((Okio.isLiveStream(streamInfoItem.getStreamType()) || streamInfoItem.getDuration() >= 0) && !Utils.isNullOrEmpty(streamInfoItem.getUploaderUrl())) {
            consumer.s(new SinglePlayQueue(streamInfoItem));
        } else {
            fetchStreamInfoAndSaveToDatabase(context, streamInfoItem.getServiceId(), streamInfoItem.getUrl(), new SparseItemUtil$$ExternalSyntheticLambda0(consumer, 1));
        }
    }

    public static void fetchStreamInfoAndSaveToDatabase(Context context, int i, String str, Consumer consumer) {
        Toast.makeText(context, R.string.loading_stream_details, 0).show();
        try {
            ExtractorHelper.getStreamInfo(i, str, false).subscribeOn(Schedulers.IO).subscribe(new SingleObserveOn.ObserveOnSingleObserver(new ConsumerSingleObserver(new RxConvertKt$$ExternalSyntheticLambda0(context, consumer, 29), new SparseItemUtil$$ExternalSyntheticLambda3(context, str, i)), AndroidSchedulers.mainThread()));
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            throw Owner.CC.m(th, "subscribeActual failed", th);
        }
    }

    public static final int getMainAxisViewportSize(PagerMeasureResult pagerMeasureResult) {
        return (int) (pagerMeasureResult.orientation == Orientation.Vertical ? pagerMeasureResult.m112getViewportSizeYbymL2g() & 4294967295L : pagerMeasureResult.m112getViewportSizeYbymL2g() >> 32);
    }

    public static int indexOf(int i) {
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 32) {
            return 5;
        }
        if (i == 64) {
            return 6;
        }
        if (i == 128) {
            return 7;
        }
        if (i == 256) {
            return 8;
        }
        if (i == 512) {
            return 9;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, "type needs to be >= FIRST and <= LAST, type="));
        return 0;
    }

    public static Continuation intercepted(Continuation continuation) {
        continuation.getClass();
        ContinuationImpl continuationImpl = continuation instanceof ContinuationImpl ? (ContinuationImpl) continuation : null;
        if (continuationImpl == null || (continuation = continuationImpl.intercepted) != null) {
            return continuation;
        }
        CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) continuationImpl.getContext().get(ContinuationInterceptor$Key.$$INSTANCE);
        Continuation dispatchedContinuation = coroutineDispatcher != null ? new DispatchedContinuation(coroutineDispatcher, continuationImpl) : continuationImpl;
        continuationImpl.intercepted = dispatchedContinuation;
        return dispatchedContinuation;
    }

    public static int percentToSemitones(double d) {
        return Cookie.Companion.clamp((int) Math.round((Math.log(d) * 12.0d) / Math.log(2.0d)), -12, 12);
    }

    public static final void positionToParentOf(SlotWriter slotWriter, Applier applier, int i) {
        while (true) {
            int i2 = slotWriter.parent;
            if (i > i2 && i < slotWriter.currentGroupEnd) {
                return;
            }
            if (i2 == 0 && i == 0) {
                return;
            }
            slotWriter.skipToGroupEnd();
            if (slotWriter.isNode(slotWriter.parent)) {
                applier.up();
            }
            slotWriter.endGroup();
        }
    }

    public static NetworkResponse readFrom(RealBufferedSource realBufferedSource) {
        int parseInt = Integer.parseInt(realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE));
        long parseLong = Long.parseLong(realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE));
        long parseLong2 = Long.parseLong(realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int parseInt2 = Integer.parseInt(realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE));
        for (int i = 0; i < parseInt2; i++) {
            String readUtf8LineStrict = realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE);
            int indexOf$default = StringsKt.indexOf$default(':', 0, 6, (CharSequence) readUtf8LineStrict);
            if (indexOf$default == -1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) "Unexpected header: ".concat(readUtf8LineStrict));
                return null;
            }
            String obj = StringsKt.trim(readUtf8LineStrict.substring(0, indexOf$default)).toString();
            String substring = readUtf8LineStrict.substring(indexOf$default + 1);
            String lowerCase = obj.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Object obj2 = linkedHashMap.get(lowerCase);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(lowerCase, obj2);
            }
            ((List) obj2).add(substring);
        }
        return new NetworkResponse(parseInt, parseLong, parseLong2, new NetworkHeaders(MapsKt__MapsKt.toMap(linkedHashMap)), null, null);
    }

    public static final ViewModel resolveViewModel(ClassReference classReference, ViewModelStore viewModelStore, CreationExtras creationExtras, Scope scope) {
        viewModelStore.getClass();
        creationExtras.getClass();
        Dispatcher dispatcher = new Dispatcher(viewModelStore, new KoinViewModelFactory(classReference, scope), creationExtras);
        classReference.getQualifiedName();
        String qualifiedName = classReference.getQualifiedName();
        if (qualifiedName != null) {
            return dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), classReference);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Local and anonymous classes can not be ViewModels");
        return null;
    }

    /* renamed from: searchBeyondBounds--OM-vw8, reason: not valid java name */
    public static final Object m676searchBeyondBoundsOMvw8(FocusTargetNode focusTargetNode, int i, Function1 function1) {
        int i2;
        final int i3;
        Object obj;
        Modifier.Node node;
        final LazyLayoutBeyondBoundsProviderModifierNode beyondBoundsLayoutParent;
        NodeChain nodeChain;
        if (!focusTargetNode.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = focusTargetNode.node.parent;
        LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(focusTargetNode);
        loop0: while (true) {
            i2 = 0;
            i3 = 1;
            obj = null;
            if (requireLayoutNode == null) {
                node = null;
                break;
            }
            if ((requireLayoutNode.nodes.head.aggregateChildKindSet & 1024) != 0) {
                while (node2 != null) {
                    if ((node2.kindSet & 1024) != 0) {
                        node = node2;
                        MutableVector mutableVector = null;
                        while (node != null) {
                            if (node instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((node.kindSet & 1024) != 0 && (node instanceof DelegatingNode)) {
                                int i4 = 0;
                                for (Modifier.Node node3 = ((DelegatingNode) node).delegate; node3 != null; node3 = node3.child) {
                                    if ((node3.kindSet & 1024) != 0) {
                                        i4++;
                                        if (i4 == 1) {
                                            node = node3;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node != null) {
                                                mutableVector.add(node);
                                                node = null;
                                            }
                                            mutableVector.add(node3);
                                        }
                                    }
                                }
                                if (i4 == 1) {
                                }
                            }
                            node = HitTestResultKt.access$pop(mutableVector);
                        }
                    }
                    node2 = node2.parent;
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui();
            node2 = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : nodeChain.tail;
        }
        FocusTargetNode focusTargetNode2 = (FocusTargetNode) node;
        if ((focusTargetNode2 == null || !Intrinsics.areEqual(focusTargetNode2.getBeyondBoundsLayoutParent(), focusTargetNode.getBeyondBoundsLayoutParent())) && (beyondBoundsLayoutParent = focusTargetNode.getBeyondBoundsLayoutParent()) != null) {
            int i5 = 5;
            if (i != 5) {
                i5 = 6;
                if (i != 6) {
                    i5 = 3;
                    if (i != 3) {
                        i5 = 4;
                        if (i != 4) {
                            if (i == 1) {
                                i3 = 2;
                            } else if (i != 2) {
                                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Unsupported direction for beyond bounds layout");
                            }
                            if (beyondBoundsLayoutParent.state.getItemCount() > 0 || !beyondBoundsLayoutParent.state.getHasVisibleItems() || !beyondBoundsLayoutParent.isAttached) {
                                return function1.invoke(LazyLayoutBeyondBoundsProviderModifierNode.emptyBeyondBoundsScope);
                            }
                            boolean m107isForward4vf7U8o = beyondBoundsLayoutParent.m107isForward4vf7U8o(i3);
                            LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsState = beyondBoundsLayoutParent.state;
                            int lastPlacedIndex = m107isForward4vf7U8o ? lazyLayoutBeyondBoundsState.getLastPlacedIndex() : lazyLayoutBeyondBoundsState.getFirstPlacedIndex();
                            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                            LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo = beyondBoundsLayoutParent.beyondBoundsInfo;
                            lazyLayoutBeyondBoundsInfo.getClass();
                            LazyLayoutBeyondBoundsInfo.Interval interval = new LazyLayoutBeyondBoundsInfo.Interval(lastPlacedIndex, lastPlacedIndex);
                            lazyLayoutBeyondBoundsInfo.beyondBoundsItems.add(interval);
                            ref$ObjectRef.element = interval;
                            int itemsPerViewport = beyondBoundsLayoutParent.state.itemsPerViewport() * 2;
                            int itemCount = beyondBoundsLayoutParent.state.getItemCount();
                            if (itemsPerViewport > itemCount) {
                                itemsPerViewport = itemCount;
                            }
                            while (obj == null && beyondBoundsLayoutParent.m106hasMoreContentFR3nfPY((LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.element, i3) && i2 < itemsPerViewport) {
                                LazyLayoutBeyondBoundsInfo.Interval interval2 = (LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.element;
                                int i6 = interval2.start;
                                int i7 = interval2.end;
                                if (beyondBoundsLayoutParent.m107isForward4vf7U8o(i3)) {
                                    i7++;
                                } else {
                                    i6--;
                                }
                                LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo2 = beyondBoundsLayoutParent.beyondBoundsInfo;
                                lazyLayoutBeyondBoundsInfo2.getClass();
                                LazyLayoutBeyondBoundsInfo.Interval interval3 = new LazyLayoutBeyondBoundsInfo.Interval(i6, i7);
                                lazyLayoutBeyondBoundsInfo2.beyondBoundsItems.add(interval3);
                                beyondBoundsLayoutParent.beyondBoundsInfo.beyondBoundsItems.remove((LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.element);
                                ref$ObjectRef.element = interval3;
                                i2++;
                                HitTestResultKt.requireLayoutNode(beyondBoundsLayoutParent).forceRemeasure();
                                obj = function1.invoke(new BeyondBoundsLayout$BeyondBoundsScope() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode$layout$2
                                    @Override // androidx.compose.ui.layout.BeyondBoundsLayout$BeyondBoundsScope
                                    public final boolean getHasMoreContent() {
                                        return LazyLayoutBeyondBoundsProviderModifierNode.this.m106hasMoreContentFR3nfPY((LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.element, i3);
                                    }
                                });
                            }
                            beyondBoundsLayoutParent.beyondBoundsInfo.beyondBoundsItems.remove((LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.element);
                            HitTestResultKt.requireLayoutNode(beyondBoundsLayoutParent).forceRemeasure();
                            return obj;
                        }
                    }
                }
            }
            i3 = i5;
            if (beyondBoundsLayoutParent.state.getItemCount() > 0) {
            }
            return function1.invoke(LazyLayoutBeyondBoundsProviderModifierNode.emptyBeyondBoundsScope);
        }
        return null;
    }

    public static int sizeAtStep(int i, int i2, int i3, int i4) {
        return i3 == 0 ? i2 : i3 > 0 ? i * (1 << (i4 - i3)) : i2 << ((-i3) - 1);
    }

    public static void suppressLayout(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            StaticImageDecoderKt.suppressLayout(viewGroup, z);
        } else if (sTryHiddenSuppressLayout) {
            try {
                StaticImageDecoderKt.suppressLayout(viewGroup, z);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSuppressLayout = false;
            }
        }
    }

    public static final String toHexString(int i) {
        if (i == 0) {
            return "0";
        }
        char[] cArr = ZipFilesKt.HEX_DIGIT_CHARS;
        int i2 = 0;
        char[] cArr2 = {cArr[(i >> 28) & 15], cArr[(i >> 24) & 15], cArr[(i >> 20) & 15], cArr[(i >> 16) & 15], cArr[(i >> 12) & 15], cArr[(i >> 8) & 15], cArr[(i >> 4) & 15], cArr[i & 15]};
        while (i2 < 8 && cArr2[i2] == '0') {
            i2++;
        }
        return StringsKt__StringsJVMKt.concatToString(cArr2, i2, 8);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m677toStringimpl(long j) {
        return "PointerId(value=" + j + ')';
    }

    public static final int toUInt(String str) {
        UInt uIntOrNull = toUIntOrNull(16, str);
        if (uIntOrNull != null) {
            return uIntOrNull.data;
        }
        StringsKt__StringsJVMKt.numberFormatError(str);
        throw null;
    }

    public static final UInt toUIntOrNull(int i, String str) {
        int i2;
        CharsKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char charAt = str.charAt(0);
        if (charAt < '0') {
            i2 = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        } else {
            i2 = 0;
        }
        int i4 = 119304647;
        while (i2 < length) {
            int digit = Character.digit((int) str.charAt(i2), i);
            if (digit < 0) {
                return null;
            }
            int i5 = i3 ^ Integer.MIN_VALUE;
            if (Integer.compare(i5, i4 ^ Integer.MIN_VALUE) > 0) {
                if (i4 != 119304647) {
                    return null;
                }
                i4 = (int) (4294967295L / (i & 4294967295L));
                if (Integer.compare(i5, i4 ^ Integer.MIN_VALUE) > 0) {
                    return null;
                }
            }
            int i6 = i3 * i;
            int i7 = digit + i6;
            if (Integer.compare(i7 ^ Integer.MIN_VALUE, i6 ^ Integer.MIN_VALUE) < 0) {
                return null;
            }
            i2++;
            i3 = i7;
        }
        return new UInt(i3);
    }

    public static final ULong toULongOrNull(String str) {
        str.getClass();
        int i = 10;
        CharsKt.checkRadix(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = str.charAt(0);
        if (charAt < '0') {
            i2 = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        }
        long j = 0;
        long j2 = 512409557603043100L;
        while (i2 < length) {
            int digit = Character.digit((int) str.charAt(i2), i);
            if (digit < 0) {
                return null;
            }
            long j3 = j ^ Long.MIN_VALUE;
            int i3 = length;
            if (Long.compare(j3, j2 ^ Long.MIN_VALUE) > 0) {
                if (j2 != 512409557603043100L || Long.compare(j3, -7378697629483820647L) > 0) {
                    return null;
                }
                j2 = 1844674407370955161L;
            }
            long j4 = j * 10;
            long j5 = (digit & 4294967295L) + j4;
            if (Long.compare(j5 ^ Long.MIN_VALUE, j4 ^ Long.MIN_VALUE) < 0) {
                return null;
            }
            i2++;
            j = j5;
            length = i3;
            i = 10;
        }
        return new ULong(j);
    }

    public static boolean tryScalarXMapSubscribe(Publisher publisher, Subscriber subscriber, Function function) {
        if (!(publisher instanceof Supplier)) {
            return false;
        }
        try {
            Object obj = ((Supplier) publisher).get();
            if (obj == null) {
                EmptySubscription.complete(subscriber);
                return true;
            }
            try {
                Object apply = function.apply(obj);
                Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                Publisher publisher2 = (Publisher) apply;
                if (!(publisher2 instanceof Supplier)) {
                    ((Flowable) publisher2).subscribe(subscriber);
                    return true;
                }
                try {
                    Object obj2 = ((Supplier) publisher2).get();
                    if (obj2 == null) {
                        EmptySubscription.complete(subscriber);
                        return true;
                    }
                    subscriber.onSubscribe(new ScalarSubscription(subscriber, obj2));
                    return true;
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    EmptySubscription.error(th, subscriber);
                    return true;
                }
            } catch (Throwable th2) {
                AppKt.throwIfFatal(th2);
                EmptySubscription.error(th2, subscriber);
                return true;
            }
        } catch (Throwable th3) {
            AppKt.throwIfFatal(th3);
            EmptySubscription.error(th3, subscriber);
            return true;
        }
    }

    public static Object wrapWithContinuationImpl(Function2 function2, Object obj, Continuation continuation) {
        function2.getClass();
        CoroutineContext context = continuation.getContext();
        Object intrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1 = context == EmptyCoroutineContext.INSTANCE ? new IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1(continuation) : new IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2(continuation, context);
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
        return function2.invoke(obj, intrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1);
    }

    public static void writeTo(NetworkResponse networkResponse, RealBufferedSink realBufferedSink) {
        realBufferedSink.writeDecimalLong(networkResponse.code);
        realBufferedSink.writeByte(10);
        realBufferedSink.writeDecimalLong(networkResponse.requestMillis);
        realBufferedSink.writeByte(10);
        realBufferedSink.writeDecimalLong(networkResponse.responseMillis);
        realBufferedSink.writeByte(10);
        Set<Map.Entry> entrySet = networkResponse.headers.data.entrySet();
        Iterator it = entrySet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((List) ((Map.Entry) it.next()).getValue()).size();
        }
        realBufferedSink.writeDecimalLong(i);
        realBufferedSink.writeByte(10);
        for (Map.Entry entry : entrySet) {
            for (String str : (List) entry.getValue()) {
                realBufferedSink.writeUtf8((String) entry.getKey());
                realBufferedSink.writeUtf8(":");
                realBufferedSink.writeUtf8(str);
                realBufferedSink.writeByte(10);
            }
        }
    }

    public abstract InputFilter[] getFilters(InputFilter[] inputFilterArr);

    public abstract boolean isEnabled();

    public abstract void setAllCaps(boolean z);

    public abstract void setEnabled(boolean z);

    public abstract TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod);
}
