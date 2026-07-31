package kotlin.ranges;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import androidx.cardview.widget.CardView;
import androidx.cardview.widget.RoundRectDrawable;
import androidx.cardview.widget.RoundRectDrawableWithShadow;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt$materializeImpl$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.text.font.AndroidFontResolveInterceptor;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.FontWeightAdjustmentHelperApi31;
import androidx.concurrent.futures.AbstractResolvableFuture;
import androidx.core.view.ViewCompat;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.NavigationEventInfo;
import androidx.navigationevent.NavigationEventProcessor;
import androidx.navigationevent.compose.ComposeNavigationEventHandler;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import androidx.navigationevent.compose.NavigationEventState;
import androidx.recyclerview.widget.ChildHelper;
import androidx.transition.Transition;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.shape.CutCornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import j$.util.DesugarCollections;
import j$.util.Objects;
import j$.util.Spliterators;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import kotlin.Unit;
import kotlin.collections.MutableMapWithDefaultImpl;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import net.newpipe.app.ComposeActivity$$ExternalSyntheticLambda2;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.jsoup.Jsoup;
import org.jsoup.nodes.NodeIterator;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.DownloaderImpl;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.downloader.Request;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.dashmanifestcreators.CreationException;
import org.schabi.newpipe.extractor.utils.ManifestCreatorCache;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.streams.WebMReader;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import us.shandian.giga.util.Utility;

/* loaded from: classes.dex */
public abstract class RangesKt implements Decoder, CompositeDecoder {
    public static final void NavigationBackHandler(NavigationEventState navigationEventState, boolean z, Function0 function0, Function0 function02, Composer composer, final int i) {
        boolean z2;
        final Function0 function03;
        final NavigationEventState navigationEventState2;
        final Function0 function04;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1220469155);
        int i2 = (gapComposer.changed(navigationEventState) ? 4 : 2) | i | (gapComposer.changed(z) ? 32 : 16) | RendererCapabilities.MODE_SUPPORT_MASK | (gapComposer.changedInstance(function02) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Object rememberedValue = gapComposer.rememberedValue();
            int i3 = 6;
            Object obj = Composer.Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = new UtilsKt$$ExternalSyntheticLambda0(i3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function0 function05 = (Function0) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = new UtilsKt$$ExternalSyntheticLambda0(i3);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function0 function06 = (Function0) rememberedValue2;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == obj) {
                rememberedValue3 = new UtilsKt$$ExternalSyntheticLambda0(i3);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Function0 function07 = (Function0) rememberedValue3;
            int i4 = (i2 & 14) | 3504;
            int i5 = i2 << 9;
            z2 = z;
            NavigationEventHandler(navigationEventState, false, function06, function07, z2, function05, function02, gapComposer, i4 | (57344 & i5) | 196608 | (i5 & 3670016));
            navigationEventState2 = navigationEventState;
            function03 = function02;
            function04 = function05;
        } else {
            z2 = z;
            function03 = function02;
            navigationEventState2 = navigationEventState;
            gapComposer.skipToGroupEnd();
            function04 = function0;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final boolean z3 = z2;
            endRestartGroup.block = new Function2(z3, function04, function03, i) { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda0
                public final /* synthetic */ boolean f$1;
                public final /* synthetic */ Function0 f$2;
                public final /* synthetic */ Function0 f$3;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    RangesKt.NavigationBackHandler(NavigationEventState.this, this.f$1, this.f$2, this.f$3, (Composer) obj2, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void NavigationEventHandler(NavigationEventState navigationEventState, final boolean z, final Function0 function0, final Function0 function02, final boolean z2, final Function0 function03, final Function0 function04, Composer composer, final int i) {
        int i2;
        final boolean z3;
        Function0 function05;
        Function0 function06;
        boolean z4;
        Function0 function07;
        Function0 function08;
        boolean z5;
        final NavigationEventState navigationEventState2 = navigationEventState;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(898330592);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(navigationEventState2) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            z3 = z;
            i2 |= gapComposer.changed(z3) ? 32 : 16;
        } else {
            z3 = z;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            function05 = function0;
            i2 |= gapComposer.changedInstance(function05) ? 256 : 128;
        } else {
            function05 = function0;
        }
        if ((i & 3072) == 0) {
            function06 = function02;
            i2 |= gapComposer.changedInstance(function06) ? 2048 : 1024;
        } else {
            function06 = function02;
        }
        if ((i & 24576) == 0) {
            z4 = z2;
            i2 |= gapComposer.changed(z4) ? 16384 : 8192;
        } else {
            z4 = z2;
        }
        if ((196608 & i) == 0) {
            function07 = function03;
            i2 |= gapComposer.changedInstance(function07) ? 131072 : 65536;
        } else {
            function07 = function03;
        }
        if ((1572864 & i) == 0) {
            function08 = function04;
            i2 |= gapComposer.changedInstance(function08) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : 524288;
        } else {
            function08 = function04;
        }
        if (!gapComposer.shouldExecute(i2 & 1, (i2 & 599187) != 599186)) {
            gapComposer.skipToGroupEnd();
        } else {
            if (((Boolean) gapComposer.consume(InspectionModeKt.LocalInspectionMode)).booleanValue()) {
                RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
                if (endRestartGroup != null) {
                    final int i3 = 0;
                    final Function0 function09 = function05;
                    final Function0 function010 = function06;
                    final boolean z6 = z4;
                    final Function0 function011 = function07;
                    final Function0 function012 = function08;
                    endRestartGroup.block = new Function2() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i4 = i3;
                            Unit unit = Unit.INSTANCE;
                            int i5 = i;
                            switch (i4) {
                                case 0:
                                    ((Integer) obj2).getClass();
                                    int updateChangedFlags = Updater.updateChangedFlags(i5 | 1);
                                    RangesKt.NavigationEventHandler(navigationEventState2, z3, function09, function010, z6, function011, function012, (Composer) obj, updateChangedFlags);
                                    break;
                                default:
                                    ((Integer) obj2).getClass();
                                    int updateChangedFlags2 = Updater.updateChangedFlags(i5 | 1);
                                    RangesKt.NavigationEventHandler(navigationEventState2, z3, function09, function010, z6, function011, function012, (Composer) obj, updateChangedFlags2);
                                    break;
                            }
                            return unit;
                        }
                    };
                    return;
                }
                return;
            }
            NavigationEventDispatcherOwner navigationEventDispatcherOwner = (NavigationEventDispatcherOwner) gapComposer.consume(LocalNavigationEventDispatcherOwner.LocalNavigationEventDispatcherOwner);
            if (navigationEventDispatcherOwner == null) {
                gapComposer.startReplaceGroup(950836184);
                View view = (View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView);
                view.getClass();
                while (true) {
                    if (view == null) {
                        navigationEventDispatcherOwner = null;
                        break;
                    }
                    Object tag = view.getTag(R.id.view_tree_navigation_event_dispatcher_owner);
                    NavigationEventDispatcherOwner navigationEventDispatcherOwner2 = tag instanceof NavigationEventDispatcherOwner ? (NavigationEventDispatcherOwner) tag : null;
                    if (navigationEventDispatcherOwner2 != null) {
                        navigationEventDispatcherOwner = navigationEventDispatcherOwner2;
                        break;
                    } else {
                        Object parentOrViewTreeDisjointParent = CloseableKt.getParentOrViewTreeDisjointParent(view);
                        view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
                    }
                }
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(950834231);
                gapComposer.end(false);
            }
            if (navigationEventDispatcherOwner == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                return;
            }
            Dispatcher navigationEventDispatcher = navigationEventDispatcherOwner.getNavigationEventDispatcher();
            int i4 = i2 & 14;
            boolean z7 = i4 == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z7 || rememberedValue == neverEqualPolicy) {
                rememberedValue = new ComposeNavigationEventHandler((NavigationEventInfo) navigationEventState2.currentInfo$delegate.getValue(), new DiskLruCache$$ExternalSyntheticLambda0(navigationEventState2, 25));
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final ComposeNavigationEventHandler composeNavigationEventHandler = (ComposeNavigationEventHandler) rememberedValue;
            boolean changedInstance = ((i2 & 3670016) == 1048576) | gapComposer.changedInstance(composeNavigationEventHandler) | ((i2 & Token.ASSIGN_MOD) == 32) | ((i2 & 896) == 256) | ((i2 & 7168) == 2048) | ((57344 & i2) == 16384) | ((458752 & i2) == 131072) | (i4 == 4);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                z5 = false;
                Function0 function013 = new Function0() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        NavigationEventProcessor navigationEventProcessor;
                        NavigationEventProcessor navigationEventProcessor2;
                        ComposeNavigationEventHandler composeNavigationEventHandler2 = ComposeNavigationEventHandler.this;
                        boolean z8 = composeNavigationEventHandler2.isForwardEnabled;
                        boolean z9 = z;
                        if (z8 != z9) {
                            composeNavigationEventHandler2.isForwardEnabled = z9;
                            Dispatcher dispatcher = composeNavigationEventHandler2.dispatcher;
                            if (dispatcher != null && (navigationEventProcessor2 = (NavigationEventProcessor) dispatcher.readyAsyncCalls) != null) {
                                navigationEventProcessor2.refreshEnabledHandlers();
                            }
                        }
                        composeNavigationEventHandler2.currentOnForwardCancelled = function0;
                        composeNavigationEventHandler2.setBackEnabled(z2);
                        composeNavigationEventHandler2.currentOnBackCancelled = function03;
                        composeNavigationEventHandler2.currentOnBackCompleted = function04;
                        NavigationEventState navigationEventState3 = navigationEventState2;
                        NavigationEventInfo navigationEventInfo = (NavigationEventInfo) navigationEventState3.currentInfo$delegate.getValue();
                        List list = (List) navigationEventState3.backInfo$delegate.getValue();
                        List list2 = (List) navigationEventState3.forwardInfo$delegate.getValue();
                        navigationEventInfo.getClass();
                        list.getClass();
                        list2.getClass();
                        composeNavigationEventHandler2.currentInfo = navigationEventInfo;
                        composeNavigationEventHandler2.backInfo = list;
                        composeNavigationEventHandler2.forwardInfo = list2;
                        Dispatcher dispatcher2 = composeNavigationEventHandler2.dispatcher;
                        if (dispatcher2 != null && (navigationEventProcessor = (NavigationEventProcessor) dispatcher2.readyAsyncCalls) != null) {
                            navigationEventProcessor.updateEnabledHandlerInfo$navigationevent(composeNavigationEventHandler2);
                        }
                        return Unit.INSTANCE;
                    }
                };
                composeNavigationEventHandler = composeNavigationEventHandler;
                navigationEventState2 = navigationEventState2;
                gapComposer.updateRememberedValue(function013);
                rememberedValue2 = function013;
            } else {
                z5 = false;
            }
            Updater.SideEffect((Function0) rememberedValue2, gapComposer);
            boolean changedInstance2 = gapComposer.changedInstance(composeNavigationEventHandler) | (i4 == 4 ? true : z5) | gapComposer.changedInstance(navigationEventDispatcher);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new ComposeActivity$$ExternalSyntheticLambda2(5, navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.DisposableEffect(navigationEventState2, (Function1) rememberedValue3, gapComposer);
        }
        RecomposeScopeImpl endRestartGroup2 = gapComposer.endRestartGroup();
        if (endRestartGroup2 != null) {
            final int i5 = 1;
            endRestartGroup2.block = new Function2() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i42 = i5;
                    Unit unit = Unit.INSTANCE;
                    int i52 = i;
                    switch (i42) {
                        case 0:
                            ((Integer) obj2).getClass();
                            int updateChangedFlags = Updater.updateChangedFlags(i52 | 1);
                            RangesKt.NavigationEventHandler(navigationEventState2, z, function0, function02, z2, function03, function04, (Composer) obj, updateChangedFlags);
                            break;
                        default:
                            ((Integer) obj2).getClass();
                            int updateChangedFlags2 = Updater.updateChangedFlags(i52 | 1);
                            RangesKt.NavigationEventHandler(navigationEventState2, z, function0, function02, z2, function03, function04, (Composer) obj, updateChangedFlags2);
                            break;
                    }
                    return unit;
                }
            };
        }
    }

    public static String buildAndCacheResult(String str, Document document, ManifestCreatorCache manifestCreatorCache) {
        try {
            String documentToXml = documentToXml(document);
            manifestCreatorCache.put(str, documentToXml);
            return documentToXml;
        } catch (Exception e) {
            throw new CreationException("Could not convert the DASH manifest generated to a string", e);
        }
    }

    public static boolean canWrite(Context context, Uri uri) {
        if (context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String queryForString = queryForString(context, uri, "mime_type");
        int queryForLong = (int) queryForLong(context, uri, "flags", 0L);
        if (TextUtils.isEmpty(queryForString)) {
            return false;
        }
        if ((queryForLong & 4) != 0) {
            return true;
        }
        if (!"vnd.android.document/directory".equals(queryForString) || (queryForLong & 8) == 0) {
            return (TextUtils.isEmpty(queryForString) || (queryForLong & 2) == 0) ? false : true;
        }
        return true;
    }

    public static void checkNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(str);
    }

    public static void closeQuietly(Cursor cursor) {
        if (cursor != null) {
            try {
                Owner.CC.m(cursor);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    public static Comparable coerceIn(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        comparable.getClass();
        if (comparable2 == null || comparable3 == null) {
            if (comparable2 != null && comparable.compareTo(comparable2) < 0) {
                return comparable2;
            }
            if (comparable3 != null && comparable.compareTo(comparable3) > 0) {
                return comparable3;
            }
        } else {
            if (comparable2.compareTo(comparable3) > 0) {
                throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + comparable3 + " is less than minimum " + comparable2 + '.');
            }
            if (comparable.compareTo(comparable2) < 0) {
                return comparable2;
            }
            if (comparable.compareTo(comparable3) > 0) {
                return comparable3;
            }
        }
        return comparable;
    }

    public static Jsoup createCornerTreatment(int i) {
        return i != 0 ? i != 1 ? new RoundedCornerTreatment(13) : new CutCornerTreatment(13) : new RoundedCornerTreatment(13);
    }

    public static final FontFamilyResolverImpl createFontFamilyResolver(Context context) {
        Transition.AnonymousClass1 anonymousClass1 = new Transition.AnonymousClass1(5);
        context.getApplicationContext();
        return new FontFamilyResolverImpl(anonymousClass1, new AndroidFontResolveInterceptor(Build.VERSION.SDK_INT >= 31 ? FontWeightAdjustmentHelperApi31.INSTANCE.fontWeightAdjustment(context) : 0));
    }

    public static final String decoderErrorMessage(String str, Decoder decoder) {
        decoder.getClass();
        return "Cannot deserialize " + str + " with '" + Reflection.getOrCreateKotlinClass(decoder.getClass()).getSimpleName() + "'. This serializer can only be used with SavedStateDecoder. Use 'decodeFromSavedState' instead.";
    }

    public static String documentToXml(Document document) {
        TransformerFactory newInstance = TransformerFactory.newInstance();
        try {
            newInstance.setAttribute("http://javax.xml.XMLConstants/property/accessExternalDTD", "");
            newInstance.setAttribute("http://javax.xml.XMLConstants/property/accessExternalSchema", "");
        } catch (Exception unused) {
        }
        Transformer newTransformer = newInstance.newTransformer();
        newTransformer.setOutputProperty("version", "1.0");
        newTransformer.setOutputProperty("encoding", "UTF-8");
        newTransformer.setOutputProperty("standalone", "no");
        StringWriter stringWriter = new StringWriter();
        newTransformer.transform(new DOMSource(document), new StreamResult(stringWriter));
        return stringWriter.toString();
    }

    public static final String encoderErrorMessage(String str, Encoder encoder) {
        encoder.getClass();
        return "Cannot serialize " + str + " with '" + Reflection.getOrCreateKotlinClass(encoder.getClass()).getSimpleName() + "'. This serializer can only be used with SavedStateEncoder. Use 'encodeToSavedState' instead.";
    }

    public static boolean exists(Context context, Uri uri) {
        Cursor cursor = null;
        try {
            try {
                cursor = context.getContentResolver().query(uri, new String[]{"document_id"}, null, null, null);
                boolean z = cursor.getCount() > 0;
                closeQuietly(cursor);
                return z;
            } catch (Exception e) {
                Log.w("DocumentFile", "Failed query: " + e);
                closeQuietly(cursor);
                return false;
            }
        } catch (Throwable th) {
            closeQuietly(cursor);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x0186, code lost:
    
        setAttribute(r9, r8, "width", java.lang.String.valueOf(r5));
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.w3c.dom.Document generateDocumentAndDoCommonElementsGeneration(org.schabi.newpipe.extractor.services.youtube.ItagItem r17, long r18) {
        /*
            Method dump skipped, instructions count: 599
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.RangesKt.generateDocumentAndDoCommonElementsGeneration(org.schabi.newpipe.extractor.services.youtube.ItagItem, long):org.w3c.dom.Document");
    }

    public static void generateSegmentTemplateElement(Document document, String str, int i) {
        if (i != 2 && i != 3) {
            throw CreationException.couldNotAddElement("SegmentTemplate", "invalid delivery type: ".concat(i != 1 ? i != 2 ? i != 3 ? "null" : "LIVE" : "OTF" : "PROGRESSIVE"));
        }
        try {
            Element element = (Element) document.getElementsByTagName("Representation").item(0);
            Element createElement = document.createElement("SegmentTemplate");
            setAttribute(createElement, document, "startNumber", i == 3 ? "0" : IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            setAttribute(createElement, document, "timescale", "1000");
            if (i != 3) {
                setAttribute(createElement, document, "initialization", str + "&sq=0");
            }
            setAttribute(createElement, document, "media", str + "&sq=$Number$");
            element.appendChild(createElement);
        } catch (DOMException e) {
            throw CreationException.couldNotAddElement(e, "SegmentTemplate");
        }
    }

    public static void generateSegmentTimelineElement(Document document) {
        try {
            ((Element) document.getElementsByTagName("SegmentTemplate").item(0)).appendChild(document.createElement("SegmentTimeline"));
        } catch (DOMException e) {
            throw CreationException.couldNotAddElement(e, "SegmentTimeline");
        }
    }

    public static final WorkGenerationalId generationalId(WorkSpec workSpec) {
        workSpec.getClass();
        return new WorkGenerationalId(workSpec.id, workSpec.generation);
    }

    /* renamed from: getCenter-uvyYCjk, reason: not valid java name */
    public static final long m668getCenteruvyYCjk(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) / 2.0f;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) / 2.0f;
        return (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
    }

    public static File getFileForUri(Uri uri) {
        String encodedPath = uri.getEncodedPath();
        int indexOf = encodedPath.indexOf(47, 1);
        String decode = Uri.decode(encodedPath.substring(1, indexOf));
        String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
        if (!"root".equalsIgnoreCase(decode)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m("Can't decode paths to '", decode, "', only for 'root' paths."));
            return null;
        }
        File file = new File("/");
        File file2 = new File(file, decode2);
        try {
            File canonicalFile = file2.getCanonicalFile();
            if (canonicalFile.getPath().startsWith(file.getPath())) {
                return canonicalFile;
            }
            throw new SecurityException("Resolved path jumped beyond configured root");
        } catch (IOException unused) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(file2, "Failed to resolve canonical path for ");
            return null;
        }
    }

    public static ChildHelper getInitializationResponse(String str, ItagItem itagItem, int i) {
        int i2 = 0;
        boolean z = Parser.isMatch(str, YoutubeParsingHelper.C_WEB_PATTERN) || Parser.isMatch(str, YoutubeParsingHelper.C_WEB_EMBEDDED_PLAYER_PATTERN);
        if (z) {
            str = Owner.CC.m$1(str, "&alr=yes");
        }
        String str2 = "";
        String m = Owner.CC.m(str, i == 1 ? "" : "&sq=0", "&rn=0");
        DownloaderImpl downloaderImpl = Utility.downloader;
        if (z) {
            String str3 = itagItem.getMediaFormat().mimeType;
            if (!Utils.isNullOrEmpty(str3)) {
                try {
                    HashMap hashMap = new HashMap(YoutubeParsingHelper.getOriginReferrerHeaders("https://www.youtube.com"));
                    while (!str2.equals(str3) && i2 < 20) {
                        try {
                            downloaderImpl.getClass();
                            Localization preferredLocalization = Utility.getPreferredLocalization();
                            WebMReader.Segment segment = new WebMReader.Segment();
                            segment.info = "POST";
                            segment.tracks = m;
                            segment.ref = new byte[]{120, 0};
                            LinkedHashMap linkedHashMap = (LinkedHashMap) segment.currentCluster;
                            linkedHashMap.clear();
                            linkedHashMap.putAll(hashMap);
                            segment.this$0 = preferredLocalization;
                            ChildHelper execute = downloaderImpl.execute(new Request(segment));
                            int i3 = execute.mRemoveStatus;
                            if (i3 != 200) {
                                throw new CreationException("Could not get the initialization URL: HTTP response code " + i3);
                            }
                            str2 = execute.getHeader("Content-Type");
                            Objects.requireNonNull(str2, "Could not get the Content-Type header from the response headers");
                            if (!str2.equals("text/plain")) {
                                return execute;
                            }
                            m = (String) execute.mHiddenViews;
                            i2++;
                        } catch (ExtractionException e) {
                            e = e;
                            throw new CreationException("Could not get the streaming URL response of a HTML5 client", e);
                        }
                    }
                    if (i2 >= 20) {
                        throw new CreationException("Too many redirects when trying to get the the streaming URL response of a HTML5 client");
                    }
                    throw new CreationException("Could not get the streaming URL response of a HTML5 client: unreachable code reached!");
                } catch (IOException | ExtractionException e2) {
                    e = e2;
                }
            }
        } else {
            if (Parser.isMatch(m, YoutubeParsingHelper.C_ANDROID_PATTERN)) {
                try {
                } catch (IOException | ExtractionException e3) {
                    e = e3;
                }
                try {
                    Object[] objArr = {YoutubeParsingHelper.getAndroidUserAgent(null)};
                    ArrayList arrayList = new ArrayList(1);
                    Object obj = objArr[0];
                    Objects.requireNonNull(obj);
                    arrayList.add(obj);
                    Map m$1 = RecordTag.m$1(DesugarCollections.unmodifiableList(arrayList));
                    byte[] bytes = "".getBytes(StandardCharsets.UTF_8);
                    downloaderImpl.getClass();
                    Localization preferredLocalization2 = Utility.getPreferredLocalization();
                    WebMReader.Segment segment2 = new WebMReader.Segment();
                    segment2.info = "POST";
                    segment2.tracks = m;
                    segment2.ref = bytes;
                    LinkedHashMap linkedHashMap2 = (LinkedHashMap) segment2.currentCluster;
                    linkedHashMap2.clear();
                    if (m$1 != null) {
                        linkedHashMap2.putAll(m$1);
                    }
                    segment2.this$0 = preferredLocalization2;
                    return downloaderImpl.execute(new Request(segment2));
                } catch (ExtractionException e4) {
                    e = e4;
                    throw new CreationException("Could not get the ANDROID streaming URL response", e);
                }
            }
            if (Parser.isMatch(m, YoutubeParsingHelper.C_IOS_PATTERN)) {
                try {
                } catch (IOException | ExtractionException e5) {
                    e = e5;
                }
                try {
                    Object[] objArr2 = {YoutubeParsingHelper.getIosUserAgent()};
                    ArrayList arrayList2 = new ArrayList(1);
                    Object obj2 = objArr2[0];
                    Objects.requireNonNull(obj2);
                    arrayList2.add(obj2);
                    Map m$12 = RecordTag.m$1(DesugarCollections.unmodifiableList(arrayList2));
                    byte[] bytes2 = "".getBytes(StandardCharsets.UTF_8);
                    downloaderImpl.getClass();
                    Localization preferredLocalization3 = Utility.getPreferredLocalization();
                    WebMReader.Segment segment3 = new WebMReader.Segment();
                    segment3.info = "POST";
                    segment3.tracks = m;
                    segment3.ref = bytes2;
                    LinkedHashMap linkedHashMap3 = (LinkedHashMap) segment3.currentCluster;
                    linkedHashMap3.clear();
                    if (m$12 != null) {
                        linkedHashMap3.putAll(m$12);
                    }
                    segment3.this$0 = preferredLocalization3;
                    return downloaderImpl.execute(new Request(segment3));
                } catch (ExtractionException e6) {
                    e = e6;
                    throw new CreationException("Could not get the IOS streaming URL response", e);
                }
            }
            if (Parser.isMatch(m, YoutubeParsingHelper.C_VISIONOS_PATTERN)) {
                try {
                } catch (IOException | ExtractionException e7) {
                    e = e7;
                }
                try {
                    Object[] objArr3 = {YoutubeParsingHelper.getVisionOsUserAgent(null)};
                    ArrayList arrayList3 = new ArrayList(1);
                    Object obj3 = objArr3[0];
                    Objects.requireNonNull(obj3);
                    arrayList3.add(obj3);
                    Map m$13 = RecordTag.m$1(DesugarCollections.unmodifiableList(arrayList3));
                    byte[] bytes3 = "".getBytes(StandardCharsets.UTF_8);
                    downloaderImpl.getClass();
                    Localization preferredLocalization4 = Utility.getPreferredLocalization();
                    WebMReader.Segment segment4 = new WebMReader.Segment();
                    segment4.info = "POST";
                    segment4.tracks = m;
                    segment4.ref = bytes3;
                    LinkedHashMap linkedHashMap4 = (LinkedHashMap) segment4.currentCluster;
                    linkedHashMap4.clear();
                    if (m$13 != null) {
                        linkedHashMap4.putAll(m$13);
                    }
                    segment4.this$0 = preferredLocalization4;
                    return downloaderImpl.execute(new Request(segment4));
                } catch (ExtractionException e8) {
                    e = e8;
                    throw new CreationException("Could not get the VISIONOS streaming URL response", e);
                }
            }
        }
        try {
            return downloaderImpl.get(m);
        } catch (IOException | ExtractionException e9) {
            throw new CreationException("Could not get the streaming URL response", e9);
        }
    }

    public static final int getKioskIcon(String str) {
        str.getClass();
        switch (str.hashCode()) {
            case -1784238746:
                if (str.equals("Top 50")) {
                    return R.drawable.ic_whatshot;
                }
                return 0;
            case -1560575760:
                if (str.equals("Most liked")) {
                    return R.drawable.ic_thumb_up;
                }
                return 0;
            case -934918565:
                if (str.equals("recent")) {
                    return R.drawable.ic_add_circle_outline;
                }
                return 0;
            case -412501879:
                if (str.equals("trending_gaming")) {
                    return R.drawable.ic_videogame_asset;
                }
                return 0;
            case -226015154:
                if (str.equals("Featured")) {
                    return R.drawable.ic_stars;
                }
                return 0;
            case -126303565:
                if (str.equals("New & hot")) {
                    return R.drawable.ic_whatshot;
                }
                return 0;
            case 3322092:
                if (str.equals("live")) {
                    return R.drawable.ic_live_tv;
                }
                return 0;
            case 73592651:
                if (str.equals("Local")) {
                    return R.drawable.ic_home;
                }
                return 0;
            case 78717915:
                if (str.equals("Radio")) {
                    return R.drawable.ic_radio;
                }
                return 0;
            case 725183116:
                if (str.equals("trending_movies_and_shows")) {
                    return R.drawable.ic_movie;
                }
                return 0;
            case 1082744535:
                if (str.equals("conferences")) {
                    return R.drawable.ic_whatshot;
                }
                return 0;
            case 1459599685:
                if (str.equals("Trending")) {
                    return R.drawable.ic_whatshot;
                }
                return 0;
            case 1630301224:
                if (str.equals("Recently added")) {
                    return R.drawable.ic_add_circle_outline;
                }
                return 0;
            case 1655404171:
                if (str.equals("trending_music")) {
                    return R.drawable.ic_music_note;
                }
                return 0;
            case 1709486478:
                if (str.equals("trending_podcasts_episodes")) {
                    return R.drawable.ic_podcasts;
                }
                return 0;
            default:
                return 0;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final String getTranslatedKioskName(Context context, String str) {
        str.getClass();
        context.getClass();
        switch (str.hashCode()) {
            case -1784238746:
                if (str.equals("Top 50")) {
                    String string = context.getString(R.string.top_50);
                    string.getClass();
                    return string;
                }
                return str;
            case -1560575760:
                if (str.equals("Most liked")) {
                    String string2 = context.getString(R.string.most_liked);
                    string2.getClass();
                    return string2;
                }
                return str;
            case -934918565:
                if (str.equals("recent")) {
                    String string3 = context.getString(R.string.recent);
                    string3.getClass();
                    return string3;
                }
                return str;
            case -412501879:
                if (str.equals("trending_gaming")) {
                    String string4 = context.getString(R.string.trending_gaming);
                    string4.getClass();
                    return string4;
                }
                return str;
            case -226015154:
                if (str.equals("Featured")) {
                    String string5 = context.getString(R.string.featured);
                    string5.getClass();
                    return string5;
                }
                return str;
            case -126303565:
                if (str.equals("New & hot")) {
                    String string6 = context.getString(R.string.new_and_hot);
                    string6.getClass();
                    return string6;
                }
                return str;
            case 3322092:
                if (str.equals("live")) {
                    String string7 = context.getString(R.string.duration_live);
                    string7.getClass();
                    return string7;
                }
                return str;
            case 73592651:
                if (str.equals("Local")) {
                    String string8 = context.getString(R.string.local);
                    string8.getClass();
                    return string8;
                }
                return str;
            case 78717915:
                if (str.equals("Radio")) {
                    String string9 = context.getString(R.string.radio);
                    string9.getClass();
                    return string9;
                }
                return str;
            case 725183116:
                if (str.equals("trending_movies_and_shows")) {
                    String string10 = context.getString(R.string.trending_movies);
                    string10.getClass();
                    return string10;
                }
                return str;
            case 1082744535:
                if (str.equals("conferences")) {
                    String string11 = context.getString(R.string.conferences);
                    string11.getClass();
                    return string11;
                }
                return str;
            case 1459599685:
                if (str.equals("Trending")) {
                    String string12 = context.getString(R.string.trending);
                    string12.getClass();
                    return string12;
                }
                return str;
            case 1630301224:
                if (str.equals("Recently added")) {
                    String string13 = context.getString(R.string.recently_added);
                    string13.getClass();
                    return string13;
                }
                return str;
            case 1655404171:
                if (str.equals("trending_music")) {
                    String string14 = context.getString(R.string.trending_music);
                    string14.getClass();
                    return string14;
                }
                return str;
            case 1709486478:
                if (str.equals("trending_podcasts_episodes")) {
                    String string15 = context.getString(R.string.trending_podcasts);
                    string15.getClass();
                    return string15;
                }
                return str;
            default:
                return str;
        }
    }

    public static boolean isEndToEnd(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    public static final Modifier materializeImpl(final Composer composer, Modifier modifier) {
        if (modifier.all(ComposedModifierKt$materializeImpl$1.INSTANCE)) {
            return modifier;
        }
        ((GapComposer) composer).m167startAzEfcrM(1219399079, null, null, 0);
        Modifier modifier2 = (Modifier) modifier.foldIn(Modifier.Companion.$$INSTANCE, new Function2() { // from class: androidx.compose.ui.ComposedModifierKt$materializeImpl$result$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Modifier modifier3 = (Modifier) obj;
                Modifier modifier4 = (Modifier.Element) obj2;
                if (modifier4 instanceof ComposedModifier) {
                    Function3 function3 = ((ComposedModifier) modifier4).factory;
                    TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, function3);
                    modifier4 = RangesKt.materializeImpl(Composer.this, (Modifier) function3.invoke(Modifier.Companion.$$INSTANCE, Composer.this, 0));
                }
                return modifier3.then(modifier4);
            }
        });
        ((GapComposer) composer).end(false);
        return modifier2;
    }

    public static final Modifier materializeModifier(Composer composer, Modifier modifier) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(439770924);
        Modifier materializeImpl = materializeImpl(gapComposer, modifier);
        gapComposer.end(false);
        return materializeImpl;
    }

    public static long queryForLong(Context context, Uri uri, String str, long j) {
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursor = null;
        try {
            try {
                cursor = contentResolver.query(uri, new String[]{str}, null, null, null);
                if (!cursor.moveToFirst() || cursor.isNull(0)) {
                    closeQuietly(cursor);
                    return j;
                }
                long j2 = cursor.getLong(0);
                closeQuietly(cursor);
                return j2;
            } catch (Exception e) {
                Log.w("DocumentFile", "Failed query: " + e);
                closeQuietly(cursor);
                return j;
            }
        } catch (Throwable th) {
            closeQuietly(cursor);
            throw th;
        }
    }

    public static String queryForString(Context context, Uri uri, String str) {
        Cursor cursor;
        Throwable th;
        Exception exc;
        try {
            cursor = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursor.moveToFirst() || cursor.isNull(0)) {
                        closeQuietly(cursor);
                        return null;
                    }
                    String string = cursor.getString(0);
                    closeQuietly(cursor);
                    return string;
                } catch (Exception e) {
                    exc = e;
                    Log.w("DocumentFile", "Failed query: " + exc);
                    closeQuietly(cursor);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                closeQuietly(cursor);
                throw th;
            }
        } catch (Exception e2) {
            exc = e2;
            cursor = null;
        } catch (Throwable th3) {
            cursor = null;
            th = th3;
            closeQuietly(cursor);
            throw th;
        }
    }

    public static void setAttribute(Element element, Document document, String str, String str2) {
        Attr createAttribute = document.createAttribute(str);
        createAttribute.setValue(str2);
        element.setAttributeNode(createAttribute);
    }

    public static void setMaxElevation(CardView.AnonymousClass1 anonymousClass1, float f) {
        float f2;
        float f3;
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) anonymousClass1.mCardBackground;
        CardView cardView = (CardView) anonymousClass1.this$0;
        boolean useCompatPadding = cardView.getUseCompatPadding();
        boolean preventCornerOverlap = cardView.getPreventCornerOverlap();
        if (f != roundRectDrawable.mPadding || roundRectDrawable.mInsetForPadding != useCompatPadding || roundRectDrawable.mInsetForRadius != preventCornerOverlap) {
            roundRectDrawable.mPadding = f;
            roundRectDrawable.mInsetForPadding = useCompatPadding;
            roundRectDrawable.mInsetForRadius = preventCornerOverlap;
            roundRectDrawable.updateBounds(null);
            roundRectDrawable.invalidateSelf();
        }
        if (!cardView.getUseCompatPadding()) {
            anonymousClass1.setShadowPadding(0, 0, 0, 0);
            return;
        }
        RoundRectDrawable roundRectDrawable2 = (RoundRectDrawable) anonymousClass1.mCardBackground;
        float f4 = roundRectDrawable2.mPadding;
        float f5 = roundRectDrawable2.mRadius;
        if (cardView.getPreventCornerOverlap()) {
            f2 = (float) (((1.0d - RoundRectDrawableWithShadow.COS_45) * f5) + f4);
        } else {
            int i = RoundRectDrawableWithShadow.$r8$clinit;
            f2 = f4;
        }
        int ceil = (int) Math.ceil(f2);
        if (cardView.getPreventCornerOverlap()) {
            f3 = (float) (((1.0d - RoundRectDrawableWithShadow.COS_45) * f5) + (f4 * 1.5f));
        } else {
            f3 = f4 * 1.5f;
        }
        int ceil2 = (int) Math.ceil(f3);
        anonymousClass1.setShadowPadding(ceil, ceil2, ceil, ceil2);
    }

    public static void setParentAbsoluteElevation(View view, MaterialShapeDrawable materialShapeDrawable) {
        ElevationOverlayProvider elevationOverlayProvider = materialShapeDrawable.drawableState.elevationOverlayProvider;
        if (elevationOverlayProvider == null || !elevationOverlayProvider.elevationOverlayEnabled) {
            return;
        }
        float f = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            f += ((View) parent).getElevation();
        }
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.drawableState;
        if (materialShapeDrawableState.parentAbsoluteElevation != f) {
            materialShapeDrawableState.parentAbsoluteElevation = f;
            materialShapeDrawable.updateZ();
        }
    }

    public static IntProgression step(IntRange intRange, int i) {
        intRange.getClass();
        boolean z = i > 0;
        Integer valueOf = Integer.valueOf(i);
        if (!z) {
            throw new IllegalArgumentException("Step must be positive, was: " + valueOf + '.');
        }
        int i2 = intRange.first;
        int i3 = intRange.last;
        if (intRange.step <= 0) {
            i = -i;
        }
        return new IntProgression(i2, i3, i);
    }

    public static Stream stream(org.jsoup.nodes.Element element, Class cls) {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(new NodeIterator(element, cls), 273), false);
    }

    public static IntRange until(int i, int i2) {
        if (i2 > Integer.MIN_VALUE) {
            return new IntRange(i, i2 - 1, 1);
        }
        IntRange intRange = IntRange.EMPTY;
        return IntRange.EMPTY;
    }

    public static Map withDefaultMutable(EnumMap enumMap, ZipFilesKt$$ExternalSyntheticLambda3 zipFilesKt$$ExternalSyntheticLambda3) {
        return new MutableMapWithDefaultImpl(enumMap, zipFilesKt$$ExternalSyntheticLambda3);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public CompositeDecoder beginStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    public abstract boolean casListeners(AbstractResolvableFuture abstractResolvableFuture, AbstractResolvableFuture.Listener listener, AbstractResolvableFuture.Listener listener2);

    public abstract boolean casValue(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2);

    public abstract boolean casWaiters(AbstractResolvableFuture abstractResolvableFuture, AbstractResolvableFuture.Waiter waiter, AbstractResolvableFuture.Waiter waiter2);

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeBoolean() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public boolean decodeBooleanElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeBoolean();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public byte decodeByte() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public byte decodeByteElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeByte();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public char decodeChar() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public char decodeCharElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeChar();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public double decodeDouble() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public double decodeDoubleElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeDouble();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public float decodeFloat() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public float decodeFloatElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeFloat();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public Decoder decodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public Decoder decodeInlineElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeInline(primitiveArrayDescriptor.getElementDescriptor(i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public int decodeInt() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeIntElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeInt();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public long decodeLong() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public long decodeLongElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeLong();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        return true;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public Object decodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, String str) {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        serialDescriptor.getClass();
        StringSerializer.descriptor.getClass();
        if (decodeNotNullMark()) {
            return decodeSerializableValue(stringSerializer);
        }
        return null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public Object decodeSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        kSerializer.getClass();
        return decodeSerializableValue(kSerializer);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public Object decodeSerializableValue(KSerializer kSerializer) {
        kSerializer.getClass();
        return kSerializer.mo469deserialize(this);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public short decodeShort() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public short decodeShortElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeShort();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public String decodeString() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public String decodeStringElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeString();
    }

    public void decodeValue() {
        throw new SerializationException(Reflection.getOrCreateKotlinClass(getClass()) + " can't retrieve untyped values");
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
    }

    public abstract void putNext(AbstractResolvableFuture.Waiter waiter, AbstractResolvableFuture.Waiter waiter2);

    public abstract void putThread(AbstractResolvableFuture.Waiter waiter, Thread thread);

    public static Comparable coerceIn(Float f, ClosedFloatRange closedFloatRange) {
        closedFloatRange.getClass();
        float f2 = closedFloatRange._endInclusive;
        Float valueOf = Float.valueOf(0.0f);
        if (0.0f <= f2) {
            return (!ClosedFloatRange.lessThanOrEquals(f, valueOf) || ClosedFloatRange.lessThanOrEquals(valueOf, f)) ? (!ClosedFloatRange.lessThanOrEquals(Float.valueOf(f2), f) || ClosedFloatRange.lessThanOrEquals(f, Float.valueOf(f2))) ? f : Float.valueOf(f2) : valueOf;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + closedFloatRange + '.');
    }

    public static int coerceIn(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    public static long coerceIn(long j, long j2, long j3) {
        if (j2 <= j3) {
            return j < j2 ? j2 : j > j3 ? j3 : j;
        }
        StringBuilder m = Modifier.CC.m(j3, "Cannot coerce value to an empty range: maximum ", " is less than minimum ");
        m.append(j2);
        m.append('.');
        throw new IllegalArgumentException(m.toString());
    }

    public static float coerceIn(float f, float f2, float f3) {
        if (f2 <= f3) {
            return f < f2 ? f2 : f > f3 ? f3 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f3 + " is less than minimum " + f2 + '.');
    }

    public static double coerceIn(double d, double d2, double d3) {
        if (d2 <= d3) {
            return d < d2 ? d2 : d > d3 ? d3 : d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d3 + " is less than minimum " + d2 + '.');
    }
}
