package androidx.work;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Movie;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.navigation.NavDeepLink;
import androidx.paging.AsyncPagingDataDiffer$presenter$1;
import androidx.paging.FlattenedPageEventStorage;
import androidx.paging.LoadType;
import androidx.paging.MulticastedPagingData;
import androidx.paging.PageEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.InvalidationTracker;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.PassthroughConnectionPool;
import androidx.savedstate.Recreator;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.utils.EnqueueRunnable;
import androidx.work.impl.utils.EnqueueUtilsKt;
import coil3.BitmapImage;
import coil3.Extras;
import coil3.ImageLoader$Builder;
import coil3.RealImageLoader;
import coil3.UriKt;
import coil3.decode.BitmapFactoryDecoder;
import coil3.decode.DecodeResult;
import coil3.decode.DecodeUtils$WhenMappings;
import coil3.decode.ImageSource;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.disk.RealDiskCache;
import coil3.gif.GifDecoder;
import coil3.gif.ImageRequestsKt;
import coil3.gif.MovieDrawable;
import coil3.gif.PixelOpacity;
import coil3.memory.MemoryCacheService;
import coil3.memory.RealMemoryCache;
import coil3.memory.RealStrongMemoryCache;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Dimension;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.svg.Svg$Parser$Companion$DEFAULT$1;
import coil3.svg.Svg$ViewBox;
import coil3.svg.SvgDecoder;
import coil3.svg.SvgImage;
import coil3.svg.internal.AndroidSvg;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGParser;
import com.google.accompanist.drawablepainter.DrawablePainter;
import com.google.accompanist.drawablepainter.DrawablePainter$callback$2$1;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Callable;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.UIntArray;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.descriptors.ContextDescriptor;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;
import okio.PriorityQueue;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipFilesKt;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.wikipedia.activitytab.ActivityTabCustomizationActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Worker$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Worker$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        FrameworkSQLiteOpenHelper.OpenHelper openHelper;
        boolean z;
        int i;
        Object obj;
        Throwable th;
        AndroidSvg androidSvg;
        float f;
        float f2;
        float max;
        int lastIndexOf$default;
        Pair pair;
        Pair pair2;
        int i2 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i3 = 0;
        Object obj2 = this.f$0;
        switch (i2) {
            case 0:
                return ((Worker) obj2).doWork();
            case 1:
                return new NavDeepLink((String) obj2);
            case 2:
                PageEvent pageEvent = (PageEvent) CollectionsKt.firstOrNull(((FlattenedPageEventStorage) ((StatusLine) ((MulticastedPagingData) obj2).accumulated.url).protocol).getAsEvents());
                if (pageEvent != null && (pageEvent instanceof PageEvent.Insert)) {
                    PageEvent.Insert insert = (PageEvent.Insert) pageEvent;
                    if (insert.loadType == LoadType.REFRESH) {
                        return insert;
                    }
                }
                return null;
            case 3:
                ((AsyncPagingDataDiffer$presenter$1) obj2)._onPagesUpdatedFlow.tryEmit(unit);
                return unit;
            case 4:
                RoomDatabase roomDatabase = ((InvalidationTracker) obj2).database;
                return Boolean.valueOf(!roomDatabase.inCompatibilityMode() || roomDatabase.isOpenInternal$room_runtime());
            case 5:
                return ((Callable) obj2).call();
            case 6:
                ((Runnable) obj2).run();
                return unit;
            case 7:
                return ((AndroidSvg) obj2).open(":memory:");
            case 8:
                PassthroughConnectionPool passthroughConnectionPool = (PassthroughConnectionPool) obj2;
                return passthroughConnectionPool.driver.open(passthroughConnectionPool.fileName);
            case 9:
                SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) obj2;
                savedStateRegistryOwner.getLifecycle().addObserver(new Recreator(i3, savedStateRegistryOwner));
                return unit;
            case 10:
                FrameworkSQLiteOpenHelper frameworkSQLiteOpenHelper = (FrameworkSQLiteOpenHelper) obj2;
                Context context = frameworkSQLiteOpenHelper.context;
                String str = frameworkSQLiteOpenHelper.name;
                if (str == null || !frameworkSQLiteOpenHelper.useNoBackupDirectory) {
                    openHelper = new FrameworkSQLiteOpenHelper.OpenHelper(context, frameworkSQLiteOpenHelper.name, new MemoryCacheService(6, (byte) 0), frameworkSQLiteOpenHelper.callback, frameworkSQLiteOpenHelper.allowDataLossOnRecovery);
                } else {
                    File noBackupFilesDir = context.getNoBackupFilesDir();
                    noBackupFilesDir.getClass();
                    openHelper = new FrameworkSQLiteOpenHelper.OpenHelper(context, new File(noBackupFilesDir, str).getAbsolutePath(), new MemoryCacheService(6, (byte) 0), frameworkSQLiteOpenHelper.callback, frameworkSQLiteOpenHelper.allowDataLossOnRecovery);
                }
                openHelper.setWriteAheadLoggingEnabled(frameworkSQLiteOpenHelper.writeAheadLoggingEnabled);
                return openHelper;
            case 11:
                WorkContinuationImpl workContinuationImpl = (WorkContinuationImpl) obj2;
                String str2 = EnqueueRunnable.TAG;
                WorkManagerImpl workManagerImpl = workContinuationImpl.mWorkManagerImpl;
                WorkDatabase workDatabase = workManagerImpl.mWorkDatabase;
                HashSet hashSet = new HashSet();
                hashSet.addAll(workContinuationImpl.mIds);
                HashSet prerequisitesFor = WorkContinuationImpl.prerequisitesFor(workContinuationImpl);
                Iterator it = hashSet.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        hashSet.removeAll(workContinuationImpl.mIds);
                        z = false;
                    } else if (prerequisitesFor.contains((String) it.next())) {
                        z = true;
                    }
                }
                if (z) {
                    TimeSource$Companion$$ExternalSyntheticLambda0.m$1(workContinuationImpl, ")", "WorkContinuation has cycles (");
                    return null;
                }
                Configuration configuration = workManagerImpl.mConfiguration;
                workDatabase.beginTransaction();
                try {
                    EnqueueUtilsKt.checkContentUriTriggerWorkerLimits(workDatabase, configuration, workContinuationImpl);
                    boolean processContinuation = EnqueueRunnable.processContinuation(workContinuationImpl);
                    workDatabase.setTransactionSuccessful();
                    if (!processContinuation) {
                        return unit;
                    }
                    Schedulers.schedule(configuration, workDatabase, workManagerImpl.mSchedulers);
                    return unit;
                } finally {
                    workDatabase.internalEndTransaction();
                }
            case 12:
                return Room.listOf((Pair) obj2);
            case IMAGE_VALUE:
                Context context2 = (Context) ((ImageLoader$Builder) obj2).application;
                double d = 0.2d;
                try {
                    Object systemService = context2.getSystemService((Class<Object>) ActivityManager.class);
                    systemService.getClass();
                    if (((ActivityManager) systemService).isLowRamDevice()) {
                        d = 0.15d;
                    }
                } catch (Exception unused) {
                }
                if (0.0d > d || d > 1.0d) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("percent must be in the range [0.0, 1.0].");
                    return null;
                }
                PriorityQueue priorityQueue = new PriorityQueue(8, (byte) 0);
                try {
                    Object systemService2 = context2.getSystemService((Class<Object>) ActivityManager.class);
                    systemService2.getClass();
                    ActivityManager activityManager = (ActivityManager) systemService2;
                    i = (context2.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass();
                } catch (Exception unused2) {
                    i = 256;
                }
                return new RealMemoryCache(new RealStrongMemoryCache((long) (d * i * 1048576), priorityQueue), priorityQueue);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return BitmapFactoryDecoder.decode$lambda$0$0((BitmapFactoryDecoder) obj2);
            case 15:
                GifDecoder gifDecoder = (GifDecoder) obj2;
                ImageSource imageSource = gifDecoder.source;
                Options options = gifDecoder.options;
                ImageSource maybeWrapImageSourceToRewriteFrameDelay = Room.maybeWrapImageSourceToRewriteFrameDelay(imageSource, true);
                try {
                    Movie decodeStream = Movie.decodeStream(maybeWrapImageSourceToRewriteFrameDelay.source().inputStream());
                    TuplesKt.closeFinally(maybeWrapImageSourceToRewriteFrameDelay, null);
                    if (decodeStream == null || decodeStream.width() <= 0 || decodeStream.height() <= 0) {
                        obj = null;
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Failed to decode GIF.");
                    } else {
                        MovieDrawable movieDrawable = new MovieDrawable(decodeStream, (decodeStream.isOpaque() && ((Boolean) UriKt.getExtra(options, ImageRequests_androidKt.allowRgb565Key)).booleanValue()) ? Bitmap.Config.RGB_565 : BitmapsKt.isHardware(ImageRequests_androidKt.getBitmapConfig(options)) ? Bitmap.Config.ARGB_8888 : (Bitmap.Config) UriKt.getExtra(options, ImageRequests_androidKt.bitmapConfigKey), options.scale);
                        Extras.Key key = ImageRequestsKt.repeatCountKey;
                        if (((Number) UriKt.getExtra(options, key)).intValue() != -2) {
                            int intValue = ((Number) UriKt.getExtra(options, key)).intValue();
                            if (intValue < -1) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(intValue, "Invalid repeatCount: "));
                                return null;
                            }
                            movieDrawable.repeatCount = intValue;
                        }
                        final Function0 function0 = (Function0) UriKt.getExtra(options, ImageRequestsKt.animationStartCallbackKey);
                        final Function0 function02 = (Function0) UriKt.getExtra(options, ImageRequestsKt.animationEndCallbackKey);
                        if (function0 != null || function02 != null) {
                            movieDrawable.callbacks.add(new Animatable2Compat$AnimationCallback() { // from class: coil3.gif.internal.UtilsKt$animatable2CompatCallbackOf$1
                                @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback
                                public final void onAnimationEnd(Drawable drawable) {
                                    Function0 function03 = function02;
                                    if (function03 != null) {
                                        function03.invoke();
                                    }
                                }

                                @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback
                                public final void onAnimationStart(Drawable drawable) {
                                    Function0 function03 = Function0.this;
                                    if (function03 != null) {
                                        function03.invoke();
                                    }
                                }
                            });
                        }
                        obj = null;
                        if (UriKt.getExtra(options, ImageRequestsKt.animatedTransformationKey) == null) {
                            movieDrawable.animatedTransformationPicture = null;
                            movieDrawable.pixelOpacity = PixelOpacity.UNCHANGED;
                            movieDrawable.isSoftwareScalingEnabled = false;
                            movieDrawable.invalidateSelf();
                            return new DecodeResult(UriKt.asImage(movieDrawable), false);
                        }
                        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                    }
                    return obj;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        TuplesKt.closeFinally(maybeWrapImageSourceToRewriteFrameDelay, th2);
                        throw th3;
                    }
                }
            case LAZY_VERTICAL_GRID_VALUE:
                return (RealDiskCache) ((RealImageLoader) obj2).options.diskCacheLazy.getValue();
            case VERTICAL_GRID_ITEM_VALUE:
                SvgDecoder svgDecoder = (SvgDecoder) obj2;
                ImageSource imageSource2 = svgDecoder.source;
                Options options2 = svgDecoder.options;
                BufferedSource source = imageSource2.source();
                try {
                    androidSvg = Svg$Parser$Companion$DEFAULT$1.INSTANCE.parse(source);
                    try {
                        source.close();
                        th = null;
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } catch (Throwable th5) {
                    try {
                        source.close();
                    } catch (Throwable th6) {
                        ExceptionsKt.addSuppressed(th5, th6);
                    }
                    th = th5;
                    androidSvg = null;
                }
                if (th != null) {
                    throw th;
                }
                SVG svg = (SVG) androidSvg.svg;
                SVG.Svg svg2 = (SVG.Svg) svg.rootElement;
                if (svg2 != null) {
                    SVG.Box box = svg2.viewBox;
                    RectF rectF = box == null ? null : new RectF(box.minX, box.minY, box.maxX(), box.maxY());
                    Svg$ViewBox svg$ViewBox = rectF != null ? new Svg$ViewBox(rectF.left, rectF.top, rectF.right, rectF.bottom) : null;
                    if (svg$ViewBox != null) {
                        f = svg$ViewBox.right - svg$ViewBox.left;
                        f2 = svg$ViewBox.bottom - svg$ViewBox.top;
                    } else if (((SVG.Svg) svg.rootElement) != null) {
                        f = svg.getDocumentDimensions().width;
                        if (((SVG.Svg) svg.rootElement) != null) {
                            f2 = svg.getDocumentDimensions().height;
                        } else {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("SVG document is empty");
                        }
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("SVG document is empty");
                    }
                    Size size = options2.size;
                    Scale scale = options2.scale;
                    if (Intrinsics.areEqual(size, Size.ORIGINAL)) {
                        float floatValue = ((Number) svgDecoder.density.invoke(options2.context)).floatValue();
                        if (f > RecyclerView.DECELERATION_RATE) {
                            f *= floatValue;
                        }
                        if (f2 > RecyclerView.DECELERATION_RATE) {
                            f2 *= floatValue;
                        }
                    }
                    int roundToInt = f > RecyclerView.DECELERATION_RATE ? UnsignedKt.roundToInt(f) : 512;
                    int roundToInt2 = f2 > RecyclerView.DECELERATION_RATE ? UnsignedKt.roundToInt(f2) : 512;
                    Size size2 = options2.size;
                    Extras.Key key2 = coil3.request.ImageRequestsKt.maxBitmapSizeKey;
                    long m821computeDstSizesEdh43o = UnsignedKt.m821computeDstSizesEdh43o(roundToInt, roundToInt2, size2, scale, (Size) UriKt.getExtra(options2, key2));
                    AndroidSvg androidSvg2 = androidSvg;
                    int i4 = (int) (m821computeDstSizesEdh43o >> 32);
                    int i5 = (int) (m821computeDstSizesEdh43o & 4294967295L);
                    if (f > RecyclerView.DECELERATION_RATE && f2 > RecyclerView.DECELERATION_RATE) {
                        float f3 = i4;
                        float f4 = i5;
                        Size size3 = (Size) UriKt.getExtra(options2, key2);
                        float f5 = f3 / f;
                        float f6 = f4 / f2;
                        int i6 = DecodeUtils$WhenMappings.$EnumSwitchMapping$0[scale.ordinal()];
                        if (i6 == 1) {
                            max = Math.max(f5, f6);
                        } else if (i6 == 2) {
                            max = Math.min(f5, f6);
                        } else {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                        }
                        if (size3.width instanceof Dimension.Pixels) {
                            float f7 = ((Dimension.Pixels) r2).px / f;
                            if (max > f7) {
                                max = f7;
                            }
                        }
                        if (size3.height instanceof Dimension.Pixels) {
                            float f8 = ((Dimension.Pixels) r2).px / f2;
                            if (max > f8) {
                                max = f8;
                            }
                        }
                        i4 = (int) (max * f);
                        i5 = (int) (max * f2);
                        if (svg$ViewBox == null) {
                            float f9 = f - RecyclerView.DECELERATION_RATE;
                            float f10 = f2 - RecyclerView.DECELERATION_RATE;
                            SVG.Svg svg3 = (SVG.Svg) svg.rootElement;
                            if (svg3 != null) {
                                svg3.viewBox = new SVG.Box(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, f9, f10);
                            } else {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m("SVG document is empty");
                            }
                        }
                    }
                    SVG.Svg svg4 = (SVG.Svg) svg.rootElement;
                    if (svg4 != null) {
                        svg4.width = SVGParser.parseLength("100%");
                        SVG.Svg svg5 = (SVG.Svg) svg.rootElement;
                        if (svg5 != null) {
                            svg5.height = SVGParser.parseLength("100%");
                            String str3 = (String) UriKt.getExtra(options2, coil3.svg.ImageRequests_androidKt.cssKey);
                            if (str3 != null) {
                                AndroidSvg androidSvg3 = new AndroidSvg(24);
                                CSSParser cSSParser = new CSSParser(CSSParser.MediaType.screen, CSSParser.Source.RenderOptions);
                                CSSParser.CSSTextScanner cSSTextScanner = new CSSParser.CSSTextScanner(str3);
                                cSSTextScanner.skipWhitespace();
                                androidSvg3.svg = cSSParser.parseRuleset(cSSTextScanner);
                                androidSvg2.renderOptions = androidSvg3;
                            }
                            return new DecodeResult(new BitmapImage(UriKt.toBitmap$default(new SvgImage(svg, (AndroidSvg) androidSvg2.renderOptions, i4, i5))), true);
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("SVG document is empty");
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("SVG document is empty");
                    }
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("SVG document is empty");
                }
                return null;
            case RADIO_GROUP_VALUE:
                return new DrawablePainter$callback$2$1(i3, (DrawablePainter) obj2);
            case RADIO_BUTTON_VALUE:
                ((View) obj2).invalidate();
                return unit;
            case RADIO_ROW_VALUE:
                Object[] objArr = (Object[]) obj2;
                objArr.getClass();
                return new UIntArray.Iterator(objArr);
            case RADIO_COLUMN_VALUE:
                return ((Iterable) obj2).iterator();
            case SIZE_BOX_VALUE:
                return obj2;
            case 23:
                PolymorphicSerializer polymorphicSerializer = (PolymorphicSerializer) obj2;
                SerialDescriptorImpl buildSerialDescriptor = RegexKt.buildSerialDescriptor("kotlinx.serialization.Polymorphic", PolymorphicKind$OPEN.INSTANCE, new SerialDescriptor[0], new DiskLruCache$$ExternalSyntheticLambda0(25, polymorphicSerializer));
                KClass kClass = polymorphicSerializer.baseClass;
                kClass.getClass();
                return new ContextDescriptor(buildSerialDescriptor, kClass);
            case 24:
                return ((KType) ((ArrayList) obj2).get(0)).getClassifier();
            case 25:
                SerialDescriptorImpl serialDescriptorImpl = (SerialDescriptorImpl) obj2;
                return Integer.valueOf(kotlinx.serialization.internal.TuplesKt.hashCodeImpl(serialDescriptorImpl, serialDescriptorImpl.typeParametersDescriptors));
            case 26:
                Http2Connection http2Connection = (Http2Connection) obj2;
                http2Connection.getClass();
                try {
                    http2Connection.writer.ping(2, 0, false);
                } catch (IOException e) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.close$okhttp(errorCode, errorCode, e);
                }
                return unit;
            case 27:
                ResourceFileSystem resourceFileSystem = (ResourceFileSystem) obj2;
                ClassLoader classLoader = resourceFileSystem.classLoader;
                FileSystem fileSystem = resourceFileSystem.systemFileSystem;
                Enumeration<URL> resources = classLoader.getResources("");
                resources.getClass();
                ArrayList<URL> list = Collections.list(resources);
                list.getClass();
                ArrayList arrayList = new ArrayList();
                for (URL url : list) {
                    url.getClass();
                    if (Intrinsics.areEqual(url.getProtocol(), "file")) {
                        String str4 = Path.DIRECTORY_SEPARATOR;
                        pair2 = new Pair(fileSystem, Path.Companion.get$default(new File(url.toURI())));
                    } else {
                        pair2 = null;
                    }
                    if (pair2 != null) {
                        arrayList.add(pair2);
                    }
                }
                Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
                resources2.getClass();
                ArrayList<URL> list2 = Collections.list(resources2);
                list2.getClass();
                ArrayList arrayList2 = new ArrayList();
                for (URL url2 : list2) {
                    url2.getClass();
                    String url3 = url2.toString();
                    url3.getClass();
                    if (StringsKt__StringsJVMKt.startsWith(url3, "jar:file:", false) && (lastIndexOf$default = StringsKt.lastIndexOf$default(6, url3, "!")) != -1) {
                        String str5 = Path.DIRECTORY_SEPARATOR;
                        pair = new Pair(ZipFilesKt.openZip(Path.Companion.get$default(new File(URI.create(url3.substring(4, lastIndexOf$default)))), fileSystem, new ZipFilesKt$$ExternalSyntheticLambda3(27)), ResourceFileSystem.ROOT);
                    } else {
                        pair = null;
                    }
                    if (pair != null) {
                        arrayList2.add(pair);
                    }
                }
                return CollectionsKt.plus((Collection) arrayList, (Iterable) arrayList2);
            case 28:
                int i7 = ActivityTabCustomizationActivity.$r8$clinit;
                ((ActivityTabCustomizationActivity) obj2).finish();
                return unit;
            default:
                return Integer.valueOf(((ParcelableSnapshotMutableIntState) obj2).getIntValue());
        }
    }
}
