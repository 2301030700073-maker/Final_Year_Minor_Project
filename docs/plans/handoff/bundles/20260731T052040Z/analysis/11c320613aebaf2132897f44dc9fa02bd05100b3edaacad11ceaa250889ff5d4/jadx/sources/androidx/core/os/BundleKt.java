package androidx.core.os;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.graphics.drawable.Drawable;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.text.Layout;
import android.util.Size;
import android.util.SizeF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.compose.foundation.IndicationKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.tooling.ReaderTraceBuilder;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0;
import androidx.compose.ui.scrollcapture.ScrollCapture$onScrollCaptureSearch$1;
import androidx.compose.ui.scrollcapture.ScrollCaptureCandidate;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntRect;
import androidx.core.os.BundleKt;
import androidx.core.view.ViewKt$allViews$1;
import androidx.customview.poolingcontainer.PoolingContainerListener;
import androidx.customview.poolingcontainer.PoolingContainerListenerHolder;
import androidx.navigation3.runtime.DecoratedNavEntriesKt$$ExternalSyntheticLambda1;
import androidx.navigation3.runtime.NavEntry;
import androidx.preference.PreferenceManager;
import androidx.sqlite.SQLite;
import coil3.decode.StaticImageDecoderKt;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import j$.util.DesugarCollections;
import j$.util.stream.Collectors;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.RandomAccess;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.EmptyList;
import kotlin.collections.ReversedListReadOnly;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.text.CharsKt;
import kotlin.text.MatchGroup;
import kotlin.text.MatcherMatchResult;
import kotlin.text.MatcherMatchResult$groups$1;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;
import kotlinx.serialization.descriptors.ContextDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.SerialDescriptorForNullable;
import okhttp3.Cookie;
import okhttp3.MediaType;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.util.ProcessFinisher;
import org.jsoup.Jsoup;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.InfoItemExtractor;
import org.schabi.newpipe.extractor.InfoItemsCollector;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampChannelInfoItemExtractor;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubePlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubeSepiaStreamInfoItemExtractor;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubeStreamInfoItemExtractor;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BundleKt {
    public static final void PrepareBackStack(final ArrayList arrayList, final List list, final Set set, final Set set2, Composer composer, final int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-720826424);
        int i2 = (i & 6) == 0 ? (gapComposer.changedInstance(arrayList) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(list) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= gapComposer.changedInstance(set) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(set2) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            MutableState rememberUpdatedState = Updater.rememberUpdatedState(arrayList, gapComposer);
            MutableState rememberUpdatedState2 = Updater.rememberUpdatedState(list, gapComposer);
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                Object obj = ((NavEntry) arrayList.get(i3)).contentKey;
                set.add(obj);
                List list2 = CollectionsKt.toList(arrayList);
                boolean changed = gapComposer.changed(rememberUpdatedState) | gapComposer.changedInstance(obj) | gapComposer.changedInstance(set) | gapComposer.changedInstance(set2) | gapComposer.changed(rememberUpdatedState2);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.Empty) {
                    DecoratedNavEntriesKt$$ExternalSyntheticLambda1 decoratedNavEntriesKt$$ExternalSyntheticLambda1 = new DecoratedNavEntriesKt$$ExternalSyntheticLambda1(obj, set, set2, rememberUpdatedState, rememberUpdatedState2, 0);
                    gapComposer.updateRememberedValue(decoratedNavEntriesKt$$ExternalSyntheticLambda1);
                    rememberedValue = decoratedNavEntriesKt$$ExternalSyntheticLambda1;
                }
                Updater.DisposableEffect(obj, list2, (Function1) rememberedValue, gapComposer);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.navigation3.runtime.DecoratedNavEntriesKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    BundleKt.PrepareBackStack(arrayList, list, set, set2, (Composer) obj2, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final long Velocity(float f, float f2) {
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.runtime.tooling.ReaderTraceBuilder, org.koin.core.logger.Logger] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.composer.gapbuffer.GapAnchor] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Integer] */
    public static final List buildTrace(SlotWriter slotWriter, Integer num, int i, Integer num2) {
        int i2;
        int groupKey;
        MutableObjectList mutableObjectList;
        if (slotWriter.closed || slotWriter.getSize$runtime() == 0) {
            return EmptyList.INSTANCE;
        }
        ?? readerTraceBuilder = new ReaderTraceBuilder(slotWriter);
        if (num2 != null) {
            i2 = num2.intValue();
        } else {
            i2 = slotWriter.parent;
            if (i2 < 0) {
                i2 = slotWriter.parent(slotWriter.groups, i);
            }
        }
        if (num == 0) {
            int slotIndex = slotWriter.currentSlot - slotWriter.slotIndex(slotWriter.groups, slotWriter.groupIndexToAddress(i));
            MutableIntObjectMap mutableIntObjectMap = slotWriter.deferredSlotWrites;
            num = Integer.valueOf(slotIndex + ((mutableIntObjectMap == null || (mutableObjectList = (MutableObjectList) mutableIntObjectMap.get(i)) == null) ? 0 : mutableObjectList._size));
        }
        int groupIndexToAddress = slotWriter.groupIndexToAddress(i) * 5;
        int[] iArr = slotWriter.groups;
        if (groupIndexToAddress < iArr.length) {
            groupKey = slotWriter.groupKey(i);
        } else {
            int parent = i2 >= 0 ? slotWriter.parent(iArr, i2) : i2;
            groupKey = slotWriter.groupKey(i2);
            int i3 = i2;
            i2 = parent;
            i = i3;
        }
        while (i >= 0) {
            readerTraceBuilder.processEdge(groupKey, (slotWriter.groups[(slotWriter.groupIndexToAddress(i) * 5) + 1] & 536870912) != 0 ? slotWriter.groupObjectKey(i) : Composer.Companion.Empty, slotWriter.sourceInformationOf$runtime(i), num);
            num = slotWriter.anchor(i);
            if (i2 >= 0) {
                int parent2 = slotWriter.parent(slotWriter.groups, i2);
                groupKey = slotWriter.groupKey(i2);
                int i4 = i2;
                i2 = parent2;
                i = i4;
            } else {
                i = i2;
            }
        }
        return (ArrayList) readerTraceBuilder.level;
    }

    public static final Bundle bundleOf(Pair... pairArr) {
        Bundle bundle = new Bundle(pairArr.length);
        for (Pair pair : pairArr) {
            String str = (String) pair.component1();
            Object component2 = pair.component2();
            if (component2 == null) {
                bundle.putString(str, null);
            } else if (component2 instanceof Boolean) {
                bundle.putBoolean(str, ((Boolean) component2).booleanValue());
            } else if (component2 instanceof Byte) {
                bundle.putByte(str, ((Number) component2).byteValue());
            } else if (component2 instanceof Character) {
                bundle.putChar(str, ((Character) component2).charValue());
            } else if (component2 instanceof Double) {
                bundle.putDouble(str, ((Number) component2).doubleValue());
            } else if (component2 instanceof Float) {
                bundle.putFloat(str, ((Number) component2).floatValue());
            } else if (component2 instanceof Integer) {
                bundle.putInt(str, ((Number) component2).intValue());
            } else if (component2 instanceof Long) {
                bundle.putLong(str, ((Number) component2).longValue());
            } else if (component2 instanceof Short) {
                bundle.putShort(str, ((Number) component2).shortValue());
            } else if (component2 instanceof Bundle) {
                bundle.putBundle(str, (Bundle) component2);
            } else if (component2 instanceof CharSequence) {
                bundle.putCharSequence(str, (CharSequence) component2);
            } else if (component2 instanceof Parcelable) {
                bundle.putParcelable(str, (Parcelable) component2);
            } else if (component2 instanceof boolean[]) {
                bundle.putBooleanArray(str, (boolean[]) component2);
            } else if (component2 instanceof byte[]) {
                bundle.putByteArray(str, (byte[]) component2);
            } else if (component2 instanceof char[]) {
                bundle.putCharArray(str, (char[]) component2);
            } else if (component2 instanceof double[]) {
                bundle.putDoubleArray(str, (double[]) component2);
            } else if (component2 instanceof float[]) {
                bundle.putFloatArray(str, (float[]) component2);
            } else if (component2 instanceof int[]) {
                bundle.putIntArray(str, (int[]) component2);
            } else if (component2 instanceof long[]) {
                bundle.putLongArray(str, (long[]) component2);
            } else if (component2 instanceof short[]) {
                bundle.putShortArray(str, (short[]) component2);
            } else if (component2 instanceof Object[]) {
                Class<?> componentType = component2.getClass().getComponentType();
                componentType.getClass();
                if (Parcelable.class.isAssignableFrom(componentType)) {
                    bundle.putParcelableArray(str, (Parcelable[]) component2);
                } else if (String.class.isAssignableFrom(componentType)) {
                    bundle.putStringArray(str, (String[]) component2);
                } else if (CharSequence.class.isAssignableFrom(componentType)) {
                    bundle.putCharSequenceArray(str, (CharSequence[]) component2);
                } else {
                    if (!Serializable.class.isAssignableFrom(componentType)) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Owner.CC.m("Illegal value array type ", componentType.getCanonicalName(), " for key \"", str, "\""));
                        return null;
                    }
                    bundle.putSerializable(str, (Serializable) component2);
                }
            } else if (component2 instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) component2);
            } else if (component2 instanceof IBinder) {
                bundle.putBinder(str, (IBinder) component2);
            } else if (component2 instanceof Size) {
                bundle.putSize(str, (Size) component2);
            } else {
                if (!(component2 instanceof SizeF)) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Owner.CC.m("Illegal value type ", component2.getClass().getCanonicalName(), " for key \"", str, "\""));
                    return null;
                }
                bundle.putSizeF(str, (SizeF) component2);
            }
        }
        return bundle;
    }

    public static final void callPoolingContainerOnRelease(View view) {
        view.getClass();
        SequenceBuilderIterator it = SQLite.iterator(new ViewKt$allViews$1(view, null));
        while (it.hasNext()) {
            ArrayList arrayList = getPoolingContainerListenerHolder((View) it.next()).listeners;
            for (int lastIndex = Jsoup.getLastIndex(arrayList); -1 < lastIndex; lastIndex--) {
                ((ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0) ((PoolingContainerListener) arrayList.get(lastIndex))).f$0.disposeComposition();
            }
        }
    }

    public static void checkBoundsIndexes$kotlin_stdlib(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("startIndex: ", i, ", endIndex: ", i2, i3);
        } else {
            if (i <= i2) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, i2, "startIndex: ", " > endIndex: "));
        }
    }

    public static void checkRangeIndexes$kotlin_stdlib(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("fromIndex: ", i, ", toIndex: ", i2, i3);
        } else {
            if (i <= i2) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, i2, "fromIndex: ", " > toIndex: "));
        }
    }

    public static final void closeFinally(AutoCloseable autoCloseable, Throwable th) {
        if (autoCloseable != null) {
            if (th != null) {
                try {
                    Owner.CC.m(autoCloseable);
                    return;
                } catch (Throwable th2) {
                    ResultKt.addSuppressed(th, th2);
                    return;
                }
            }
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
                return;
            }
            if (autoCloseable instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m$1((ExecutorService) autoCloseable);
                return;
            }
            if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
                return;
            }
            if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
                return;
            }
            if (autoCloseable instanceof MediaDrm) {
                ((MediaDrm) autoCloseable).release();
                return;
            }
            if (autoCloseable instanceof DrmManagerClient) {
                ((DrmManagerClient) autoCloseable).release();
            } else if (autoCloseable instanceof ContentProviderClient) {
                ((ContentProviderClient) autoCloseable).release();
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            }
        }
    }

    public static void collectItemsFrom(InfoItemsCollector infoItemsCollector, JsonObject jsonObject, String str, boolean z) {
        InfoItemExtractor infoItemExtractor;
        try {
            Iterator<E> it = ((JsonArray) Parser.getValue(jsonObject, "data")).iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (next instanceof JsonObject) {
                    JsonObject jsonObject2 = (JsonObject) next;
                    if (jsonObject2.containsKey(MimeTypes.BASE_TYPE_VIDEO)) {
                        jsonObject2 = jsonObject2.getObject(MimeTypes.BASE_TYPE_VIDEO);
                    }
                    boolean containsKey = jsonObject2.containsKey("videosLength");
                    boolean containsKey2 = jsonObject2.containsKey("followersCount");
                    if (z) {
                        PeertubeSepiaStreamInfoItemExtractor peertubeSepiaStreamInfoItemExtractor = new PeertubeSepiaStreamInfoItemExtractor(jsonObject2, str);
                        peertubeSepiaStreamInfoItemExtractor.baseUrl = jsonObject2.getString("embedUrl", null).replace(jsonObject2.getString("embedPath", null), "");
                        infoItemExtractor = peertubeSepiaStreamInfoItemExtractor;
                    } else {
                        infoItemExtractor = containsKey ? new PeertubePlaylistInfoItemExtractor(jsonObject2, str) : containsKey2 ? new BandcampChannelInfoItemExtractor(jsonObject2, str) : new PeertubeStreamInfoItemExtractor(jsonObject2, str);
                    }
                    infoItemsCollector.commit(infoItemExtractor);
                }
            }
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Unable to extract list info", e);
        }
    }

    public static final NavEntry decorateEntry(final NavEntry navEntry, final List list, final Set set, final Set set2, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(-1239021605);
        final MutableState rememberUpdatedState = Updater.rememberUpdatedState(list, gapComposer);
        final Object obj = navEntry.contentKey;
        gapComposer.startMovableGroup(-993800456, obj);
        NavEntry navEntry2 = new NavEntry(navEntry, Expect_jvmKt.rememberComposableLambda(-1349345695, new Function3() { // from class: androidx.navigation3.runtime.DecoratedNavEntriesKt$$ExternalSyntheticLambda0
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayList] */
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                ?? list2;
                Composer composer2 = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    Set set3 = set2;
                    boolean changedInstance = gapComposer2.changedInstance(set3);
                    Object obj5 = obj;
                    boolean changedInstance2 = changedInstance | gapComposer2.changedInstance(obj5);
                    Set set4 = set;
                    boolean changedInstance3 = changedInstance2 | gapComposer2.changedInstance(set4);
                    MutableState mutableState = rememberUpdatedState;
                    boolean changed = changedInstance3 | gapComposer2.changed(mutableState);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changed || rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new DecoratedNavEntriesKt$$ExternalSyntheticLambda3(set3, obj5, set4, mutableState);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Updater.DisposableEffect(obj5, (Function1) rememberedValue, gapComposer2);
                    gapComposer2.startReplaceGroup(358947325);
                    List list3 = list;
                    if (list3 instanceof RandomAccess) {
                        MutableScatterSet mutableScatterSet = new MutableScatterSet(list3.size());
                        list2 = new ArrayList(list3.size());
                        int size = list3.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            Object obj6 = list3.get(i2);
                            if (mutableScatterSet.add(obj6)) {
                                list2.add(obj6);
                            }
                        }
                    } else {
                        list3.getClass();
                        list2 = CollectionsKt.toList(new LinkedHashSet(list3));
                    }
                    boolean isEmpty = list2.isEmpty();
                    NavEntry navEntry3 = navEntry;
                    if (!isEmpty) {
                        ListIterator listIterator = list2.listIterator(list2.size());
                        while (listIterator.hasPrevious()) {
                            navEntry3 = new NavEntry(navEntry3, Expect_jvmKt.rememberComposableLambda(-330823412, new IndicationKt$$ExternalSyntheticLambda0((NavEntryDecorator) listIterator.previous(), navEntry3, 4), gapComposer2));
                        }
                    }
                    gapComposer2.end(false);
                    navEntry3.Content(gapComposer2, 0);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return Unit.INSTANCE;
            }
        }, gapComposer));
        gapComposer.end(false);
        gapComposer.end(false);
        return navEntry2;
    }

    public static final Integer findSubcompositionContextGroup$lambda$0$scanGroup(SlotReader slotReader, CompositionContext compositionContext, int i, int i2) {
        Integer findSubcompositionContextGroup$lambda$0$scanGroup;
        int[] iArr = slotReader.groups;
        while (true) {
            if (i >= i2) {
                return null;
            }
            int i3 = iArr[(i * 5) + 3] + i;
            if (slotReader.hasMark(i) && slotReader.groupKey(i) == 206 && Intrinsics.areEqual(slotReader.objectKey(iArr, i), ComposerKt.reference)) {
                Object groupGet = slotReader.groupGet(i, 0);
                GapRememberObserverHolder gapRememberObserverHolder = groupGet instanceof GapRememberObserverHolder ? (GapRememberObserverHolder) groupGet : null;
                Object obj = gapRememberObserverHolder != null ? gapRememberObserverHolder.wrapped : null;
                GapComposer.CompositionContextHolder compositionContextHolder = obj instanceof GapComposer.CompositionContextHolder ? (GapComposer.CompositionContextHolder) obj : null;
                if (compositionContextHolder != null && compositionContextHolder.ref == compositionContext) {
                    return Integer.valueOf(i);
                }
            }
            if (slotReader.containsMark(i) && (findSubcompositionContextGroup$lambda$0$scanGroup = findSubcompositionContextGroup$lambda$0$scanGroup(slotReader, compositionContext, i + 1, i3)) != null) {
                return Integer.valueOf(findSubcompositionContextGroup$lambda$0$scanGroup.intValue());
            }
            i = i3;
        }
    }

    public static MediaType get(String str) {
        str.getClass();
        MatcherMatchResult matchAt = MediaType.TYPE_SUBTYPE.matchAt(0, str);
        if (matchAt == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Owner.CC.m('\"', "No subtype found for: \"", str));
            return null;
        }
        String str2 = (String) ((ReversedListReadOnly) matchAt.getGroupValues()).get(1);
        Locale locale = Locale.ROOT;
        String lowerCase = str2.toLowerCase(locale);
        lowerCase.getClass();
        String lowerCase2 = ((String) ((ReversedListReadOnly) matchAt.getGroupValues()).get(2)).toLowerCase(locale);
        lowerCase2.getClass();
        ArrayList arrayList = new ArrayList();
        int i = matchAt.getRange().last;
        while (true) {
            int i2 = i + 1;
            if (i2 >= str.length()) {
                return new MediaType(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]));
            }
            MatcherMatchResult matchAt2 = MediaType.PARAMETER.matchAt(i2, str);
            if (matchAt2 == null) {
                throw new IllegalArgumentException(("Parameter is not formatted correctly: \"" + str.substring(i2) + "\" for: \"" + str + '\"').toString());
            }
            MatcherMatchResult$groups$1 matcherMatchResult$groups$1 = matchAt2.groups;
            MatchGroup matchGroup = matcherMatchResult$groups$1.get(1);
            String str3 = matchGroup != null ? matchGroup.value : null;
            if (str3 == null) {
                i = matchAt2.getRange().last;
            } else {
                MatchGroup matchGroup2 = matcherMatchResult$groups$1.get(2);
                String str4 = matchGroup2 != null ? matchGroup2.value : null;
                if (str4 == null) {
                    MatchGroup matchGroup3 = matcherMatchResult$groups$1.get(3);
                    matchGroup3.getClass();
                    str4 = matchGroup3.value;
                } else if (str4.length() > 0 && CharsKt.equals(str4.charAt(0), '\'', false) && str4.length() > 0 && CharsKt.equals(str4.charAt(str4.length() - 1), '\'', false) && str4.length() > 2) {
                    str4 = Owner.CC.m(1, 1, str4);
                }
                arrayList.add(str3);
                arrayList.add(str4);
                i = matchAt2.getRange().last;
            }
        }
    }

    public static List getAvatarsFromOwnerAccountOrVideoChannelObject(JsonObject jsonObject, String str) {
        return getImagesFromAvatarsOrBanners(jsonObject, str, "avatars", "avatar");
    }

    public static final ClassReference getCapturedKClass(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (serialDescriptor instanceof ContextDescriptor) {
            return ((ContextDescriptor) serialDescriptor).kClass;
        }
        if (serialDescriptor instanceof SerialDescriptorForNullable) {
            return getCapturedKClass(((SerialDescriptorForNullable) serialDescriptor).original);
        }
        return null;
    }

    public static ColorStateList getColorStateList(Context context, ProcessFinisher processFinisher, int i) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = (TypedArray) processFinisher.config;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = StaticImageDecoderKt.getColorStateList(context, resourceId)) == null) ? processFinisher.getColorStateList(i) : colorStateList;
    }

    public static Drawable getDrawable(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable drawable;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (drawable = Cookie.Companion.getDrawable(context, resourceId)) == null) ? typedArray.getDrawable(i) : drawable;
    }

    public static List getImagesFromAvatarsOrBanners(JsonObject jsonObject, String str, String str2, String str3) {
        JsonArray array = jsonObject.getArray(str2);
        if (!Utils.isNullOrEmpty(array)) {
            return (List) array.streamAsJsonObjects().filter(new JsonArray$$ExternalSyntheticLambda0(10)).map(new ListHelper$$ExternalSyntheticLambda3(str, 3)).collect(Collectors.toUnmodifiableList());
        }
        JsonObject object = jsonObject.getObject(str3);
        String string = object.getString("path", null);
        if (Utils.isNullOrEmpty(string)) {
            return Collections.EMPTY_LIST;
        }
        Object[] objArr = {new Image(Owner.CC.m$1(str, string), -1, object.getInt(-1, "width"), Image.ResolutionLevel.UNKNOWN)};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        return Owner.CC.m(obj, arrayList, obj, arrayList);
    }

    public static Page getNextPage(String str, long j) {
        try {
            String matchGroup = Parser.matchGroup("start=(\\d*)", 1, str);
            if (Utils.isBlank(matchGroup)) {
                return null;
            }
            long parseLong = Long.parseLong(matchGroup) + 12;
            if (parseLong >= j) {
                return null;
            }
            return new Page(str.replace(Owner.CC.m("start=", matchGroup), "start=" + parseLong));
        } catch (NumberFormatException | Parser.RegexException unused) {
            return null;
        }
    }

    public static int getOffsetForHorizontalLine(TextView textView, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int totalPaddingLeft = x - textView.getTotalPaddingLeft();
        int totalPaddingTop = y - textView.getTotalPaddingTop();
        int scrollX = textView.getScrollX() + totalPaddingLeft;
        int scrollY = textView.getScrollY() + totalPaddingTop;
        Layout layout = textView.getLayout();
        return layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
    }

    public static final PoolingContainerListenerHolder getPoolingContainerListenerHolder(View view) {
        PoolingContainerListenerHolder poolingContainerListenerHolder = (PoolingContainerListenerHolder) view.getTag(R.id.pooling_container_listener_holder_tag);
        if (poolingContainerListenerHolder != null) {
            return poolingContainerListenerHolder;
        }
        PoolingContainerListenerHolder poolingContainerListenerHolder2 = new PoolingContainerListenerHolder();
        view.setTag(R.id.pooling_container_listener_holder_tag, poolingContainerListenerHolder2);
        return poolingContainerListenerHolder2;
    }

    public static final boolean getPositionsInListsEnabled(Context context) {
        context.getClass();
        SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
        return sharedPreferences.getBoolean(context.getString(R.string.enable_watch_history_key), true) && sharedPreferences.getBoolean(context.getString(R.string.enable_playback_state_lists_key), true);
    }

    public static final boolean getResumePlaybackEnabled(Context context) {
        context.getClass();
        SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
        return sharedPreferences.getBoolean(context.getString(R.string.enable_watch_history_key), true) && sharedPreferences.getBoolean(context.getString(R.string.enable_playback_resume_key), true);
    }

    public static List getThumbnailsFromPlaylistOrVideoItem(JsonObject jsonObject, String str) {
        ArrayList arrayList = new ArrayList(2);
        String string = jsonObject.getString("thumbnailPath", null);
        if (!Utils.isNullOrEmpty(string)) {
            arrayList.add(new Image(Owner.CC.m$1(str, string), -1, -1, Image.ResolutionLevel.LOW));
        }
        String string2 = jsonObject.getString("previewPath", null);
        if (!Utils.isNullOrEmpty(string2)) {
            arrayList.add(new Image(Owner.CC.m$1(str, string2), -1, -1, Image.ResolutionLevel.MEDIUM));
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    public static boolean isFontScaleAtLeast1_3(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static boolean isNotTrailingByte(byte b) {
        return b > -65;
    }

    public static final void keyOrValueNotFoundError(String str) {
        str.getClass();
        throw new IllegalArgumentException(Modifier.CC.m("No valid saved state was found for the key '", str, "'. It may be missing, null, or not of the expected type. This can occur if the value was saved with a different type or if the saved state was modified unexpectedly."));
    }

    public static void onCreateInputConnection(InputConnection inputConnection, EditorInfo editorInfo, TextView textView) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    public static final int parseColorValue(String str) {
        if (!StringsKt__StringsJVMKt.startsWith(str, "#", false)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) "Invalid color value ".concat(str));
            return 0;
        }
        int length = str.length();
        if (length == 4) {
            int uInt = UStringsKt.toUInt(str.substring(1));
            return ((uInt & 15) * 17) | (((uInt >> 8) & 15) * 1114112) | (((uInt >> 4) & 15) * 4352) | (-16777216);
        }
        if (length == 5) {
            int uInt2 = UStringsKt.toUInt(str.substring(1));
            return ((uInt2 & 15) * 17) | (((uInt2 >> 12) & 15) * 285212672) | (((uInt2 >> 8) & 15) * 1114112) | (((uInt2 >> 4) & 15) * 4352) | (-16777216);
        }
        if (length == 7) {
            return UStringsKt.toUInt(str.substring(1)) | (-16777216);
        }
        if (length != 9) {
            return -16777216;
        }
        return UStringsKt.toUInt(str.substring(1));
    }

    public static final float parseDp(String str, Density density) {
        density.getClass();
        if (str == null) {
            return 0.0f;
        }
        if (StringsKt__StringsJVMKt.endsWith(str, "dp", false)) {
            return Float.parseFloat(StringsKt.removeSuffix(str, "dp"));
        }
        if (StringsKt__StringsJVMKt.endsWith(str, "px", false)) {
            return density.mo60toDpu2uoSUM(Float.parseFloat(StringsKt.removeSuffix(str, "px")));
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m("value should ends with dp or px");
        return 0.0f;
    }

    public static final int parseTileMode(String str) {
        int hashCode = str.hashCode();
        if (hashCode != -1073910849) {
            if (hashCode != -436781190) {
                if (hashCode == 94742715 && str.equals("clamp")) {
                    return 0;
                }
            } else if (str.equals("repeated")) {
                return 1;
            }
        } else if (str.equals("mirror")) {
            return 2;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m("unknown tileMode: ".concat(str));
        return 0;
    }

    public static final ArrayList rememberDecoratedNavEntries(List list, List list2, Composer composer, int i) {
        List list3;
        ArrayList arrayList;
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = new LinkedHashSet();
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Set set = (Set) rememberedValue;
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new LinkedHashSet();
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Set set2 = (Set) rememberedValue2;
        gapComposer.startReplaceGroup(110758886);
        if (list instanceof RandomAccess) {
            arrayList = new ArrayList(list.size());
            int size = list.size();
            int i2 = 0;
            while (i2 < size) {
                List list4 = list2;
                arrayList.add(decorateEntry((NavEntry) list.get(i2), list4, set, set2, gapComposer, i & Token.ASSIGN_MOD));
                i2++;
                list2 = list4;
            }
            list3 = list2;
        } else {
            list3 = list2;
            arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(decorateEntry((NavEntry) it.next(), list3, set, set2, gapComposer, i & Token.ASSIGN_MOD));
            }
        }
        ArrayList arrayList2 = arrayList;
        gapComposer.end(false);
        PrepareBackStack(arrayList2, list3, set, set2, gapComposer, i & Token.ASSIGN_MOD);
        return arrayList2;
    }

    public static final String toStringAsFixed(float f) {
        if (Float.isNaN(f)) {
            return "NaN";
        }
        if (Float.isInfinite(f)) {
            return f < 0.0f ? "-Infinity" : "Infinity";
        }
        int max = Math.max(1, 0);
        float pow = (float) Math.pow(10.0d, max);
        float f2 = f * pow;
        int i = (int) f2;
        if (f2 - i >= 0.5f) {
            i++;
        }
        float f3 = i / pow;
        return max > 0 ? String.valueOf(f3) : String.valueOf((int) f3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.tooling.ReaderTraceBuilder, org.koin.core.logger.Logger] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    public static final ArrayList traceForGroup(SlotReader slotReader, int i, Integer num) {
        ?? readerTraceBuilder = new ReaderTraceBuilder(slotReader);
        int parent = slotReader.parent(i);
        GapAnchor anchor = slotReader.anchor(i);
        while (i >= 0) {
            readerTraceBuilder.processEdge(slotReader.groupKey(i), slotReader.hasObjectKey(i) ? slotReader.objectKey(slotReader.groups, i) : Composer.Companion.Empty, slotReader.table.sourceInformationOf(i), num);
            if (parent >= 0) {
                GapAnchor gapAnchor = anchor;
                anchor = slotReader.anchor(parent);
                i = parent;
                parent = slotReader.parent(parent);
                num = gapAnchor;
            } else {
                i = parent;
                num = anchor;
            }
        }
        return (ArrayList) readerTraceBuilder.level;
    }

    public static void validate(JsonObject jsonObject) {
        String string = jsonObject.getString("error", null);
        if (!Utils.isBlank(string)) {
            throw new ContentNotAvailableException(string);
        }
    }

    public static final void visitScrollCaptureCandidates(SemanticsNode semanticsNode, int i, ScrollCapture$onScrollCaptureSearch$1 scrollCapture$onScrollCaptureSearch$1) {
        SemanticsNode semanticsNode2;
        MutableVector mutableVector = new MutableVector(new SemanticsNode[16]);
        List children$ui = semanticsNode.getChildren$ui(false, false);
        while (true) {
            mutableVector.addAll(mutableVector.size, children$ui);
            while (true) {
                int i2 = mutableVector.size;
                if (i2 == 0) {
                    return;
                }
                semanticsNode2 = (SemanticsNode) mutableVector.removeAt(i2 - 1);
                boolean isHidden = SemanticsNodeKt.isHidden(semanticsNode2);
                SemanticsConfiguration semanticsConfiguration = semanticsNode2.unmergedConfig;
                MutableScatterMap mutableScatterMap = semanticsConfiguration.props;
                if (!isHidden && !mutableScatterMap.containsKey(SemanticsProperties.Disabled)) {
                    NodeCoordinator findCoordinatorToGetBounds$ui = semanticsNode2.findCoordinatorToGetBounds$ui();
                    if (findCoordinatorToGetBounds$ui == null) {
                        throw Modifier.CC.m("Expected semantics node to have a coordinator.");
                    }
                    IntRect roundToIntRect = CloseableKt.roundToIntRect(RulerKt.boundsInWindow(findCoordinatorToGetBounds$ui, true));
                    if (roundToIntRect.left < roundToIntRect.right && roundToIntRect.top < roundToIntRect.bottom) {
                        Object obj = semanticsConfiguration.props.get(SemanticsActions.ScrollByOffset);
                        if (obj == null) {
                            obj = null;
                        }
                        Function2 function2 = (Function2) obj;
                        Object obj2 = mutableScatterMap.get(SemanticsProperties.VerticalScrollAxisRange);
                        ScrollAxisRange scrollAxisRange = (ScrollAxisRange) (obj2 != null ? obj2 : null);
                        if (function2 != null && scrollAxisRange != null && ((Number) scrollAxisRange.maxValue.invoke()).floatValue() > 0.0f) {
                            int i3 = 1 + i;
                            scrollCapture$onScrollCaptureSearch$1.invoke(new ScrollCaptureCandidate(semanticsNode2, i3, roundToIntRect, findCoordinatorToGetBounds$ui));
                            visitScrollCaptureCandidates(semanticsNode2, i3, scrollCapture$onScrollCaptureSearch$1);
                        }
                    }
                }
            }
            children$ui = semanticsNode2.getChildren$ui(false, false);
        }
    }

    public static ColorStateList getColorStateList(Context context, TypedArray typedArray, int i) {
        int resourceId;
        ColorStateList colorStateList;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = StaticImageDecoderKt.getColorStateList(context, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateList;
    }
}
