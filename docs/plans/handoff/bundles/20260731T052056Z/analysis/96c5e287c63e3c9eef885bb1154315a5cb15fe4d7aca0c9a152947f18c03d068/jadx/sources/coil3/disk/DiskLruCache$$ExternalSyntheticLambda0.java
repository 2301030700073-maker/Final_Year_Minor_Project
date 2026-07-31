package coil3.disk;

import android.os.Handler;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.material3.FadeInFadeOutAnimationItem;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.SingleSubscriptionSnapshotFlowManager;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.TypefaceRequest;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteAllCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextInCodePointsCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.FinishComposingTextCommand;
import androidx.compose.ui.text.input.SetComposingRegionCommand;
import androidx.compose.ui.text.input.SetComposingTextCommand;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;
import androidx.core.app.ActivityRecreator;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.paging.AsyncPagingDataDiffer;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadStateAdapter;
import androidx.paging.SimpleProducerScopeImpl;
import androidx.paging.TransformablePage;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import coil3.Image;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.ClosedFloatRange;
import kotlin.ranges.IntRange;
import kotlin.reflect.KProperty;
import kotlin.text.MatcherMatchResult$groups$1;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind$CONTEXTUAL;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TripleSerializer;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt;
import okio.FileMetadata;
import org.wikipedia.views.imageservice.DimImageTransformation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DiskLruCache$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ DiskLruCache$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    private final Object invoke$androidx$compose$runtime$snapshots$SnapshotStateObserver$$ExternalSyntheticLambda1(Object obj) {
        PreferenceManager preferenceManager = (PreferenceManager) this.f$0;
        synchronized (preferenceManager.mOnPreferenceTreeClickListener) {
            SnapshotStateObserver$ObservedScopeMap snapshotStateObserver$ObservedScopeMap = (SnapshotStateObserver$ObservedScopeMap) preferenceManager.mOnNavigateToScreenListener;
            snapshotStateObserver$ObservedScopeMap.getClass();
            Object obj2 = snapshotStateObserver$ObservedScopeMap.currentScope;
            obj2.getClass();
            int i = snapshotStateObserver$ObservedScopeMap.currentToken;
            MutableObjectIntMap mutableObjectIntMap = snapshotStateObserver$ObservedScopeMap.currentScopeReads;
            if (mutableObjectIntMap == null) {
                mutableObjectIntMap = new MutableObjectIntMap();
                snapshotStateObserver$ObservedScopeMap.currentScopeReads = mutableObjectIntMap;
                snapshotStateObserver$ObservedScopeMap.scopeToValues.set(obj2, mutableObjectIntMap);
            }
            snapshotStateObserver$ObservedScopeMap.recordRead(obj, i, obj2, mutableObjectIntMap);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String concat;
        StringBuilder sb;
        int i;
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                ((DiskLruCache) this.f$0).hasJournalErrors = true;
                return Unit.INSTANCE;
            case 1:
                return Boolean.valueOf(Intrinsics.areEqual(((FadeInFadeOutAnimationItem) obj).key, (SnackbarHostState.SnackbarDataImpl) this.f$0));
            case 2:
                TextLinkStyles textLinkStyles = (TextLinkStyles) this.f$0;
                AnnotatedString.Range range = (AnnotatedString.Range) obj;
                AnnotatedString.Annotation annotation = (AnnotatedString.Annotation) range.item;
                if (annotation instanceof LinkAnnotation.Url) {
                    LinkAnnotation.Url url = (LinkAnnotation.Url) annotation;
                    if (url.styles == null) {
                        return AnnotatedString.Range.copy$default(range, new LinkAnnotation.Url(url.url, textLinkStyles, url.linkInteractionListener), 0, 14);
                    }
                }
                if (!(annotation instanceof LinkAnnotation.Clickable)) {
                    return range;
                }
                LinkAnnotation.Clickable clickable = (LinkAnnotation.Clickable) annotation;
                return clickable.styles == null ? AnnotatedString.Range.copy$default(range, new LinkAnnotation.Clickable(clickable.tag, textLinkStyles, clickable.linkInteractionListener), 0, 14) : range;
            case 3:
                return new AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1(10, (TooltipStateImpl) this.f$0);
            case 4:
                FloatProducer floatProducer = (FloatProducer) this.f$0;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                if (floatProducer.invoke() > RecyclerView.DECELERATION_RATE) {
                    ProgressBarRangeInfo progressBarRangeInfo = new ProgressBarRangeInfo(floatProducer.invoke(), new ClosedFloatRange(1.0f));
                    KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                    SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.ProgressBarRangeInfo;
                    KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[1];
                    semanticsPropertyReceiver.set(semanticsPropertyKey, progressBarRangeInfo);
                }
                return Unit.INSTANCE;
            case 5:
                ((CompositionImpl) this.f$0).recordReadOf(obj);
                return Unit.INSTANCE;
            case 6:
                Recomposer recomposer = (Recomposer) this.f$0;
                Throwable th = (Throwable) obj;
                CancellationException CancellationException = AwaitKt.CancellationException("Recomposer effect job completed", th);
                synchronized (recomposer.stateLock) {
                    try {
                        Job job = recomposer.runnerJob;
                        if (job != null) {
                            recomposer._state.setValue(Recomposer.State.ShuttingDown);
                            job.cancel(CancellationException);
                            recomposer.workContinuation = null;
                            job.invokeOnCompletion(new NavController$$ExternalSyntheticLambda3(21, recomposer, th));
                        } else {
                            recomposer.closeCause = CancellationException;
                            recomposer._state.setValue(Recomposer.State.ShutDown);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return Unit.INSTANCE;
            case 7:
                SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager = (SingleSubscriptionSnapshotFlowManager) this.f$0;
                SendChannel sendChannel = singleSubscriptionSnapshotFlowManager.subscribedChannel;
                sendChannel.getClass();
                if (!Intrinsics.areEqual(singleSubscriptionSnapshotFlowManager.subscribedChannel, sendChannel)) {
                    PreconditionsKt.throwIllegalStateException("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
                }
                MutableScatterSet mutableScatterSet = singleSubscriptionSnapshotFlowManager.workingWatchSet;
                Object obj2 = singleSubscriptionSnapshotFlowManager.workingSoleWatchedObject;
                if (mutableScatterSet != null) {
                    if (obj2 != null) {
                        PreconditionsKt.throwIllegalStateException("workingSoleWatchedObject must be null when workingWatchSet is non-null");
                    }
                    mutableScatterSet.add(obj);
                } else if (obj2 == null) {
                    singleSubscriptionSnapshotFlowManager.workingSoleWatchedObject = obj;
                } else {
                    MutableScatterSet mutableScatterSet2 = ScatterSetKt.EmptyScatterSet;
                    MutableScatterSet mutableScatterSet3 = new MutableScatterSet();
                    mutableScatterSet3.add(obj2);
                    mutableScatterSet3.add(obj);
                    singleSubscriptionSnapshotFlowManager.workingWatchSet = mutableScatterSet3;
                    singleSubscriptionSnapshotFlowManager.workingSoleWatchedObject = null;
                }
                return Unit.INSTANCE;
            case 8:
                SaveableStateRegistry saveableStateRegistry = ((SaveableStateHolderImpl) this.f$0).parentSaveableStateRegistry;
                return Boolean.valueOf(saveableStateRegistry != null ? saveableStateRegistry.canBeSaved(obj) : true);
            case 9:
                return invoke$androidx$compose$runtime$snapshots$SnapshotStateObserver$$ExternalSyntheticLambda1(obj);
            case 10:
                TypefaceRequest typefaceRequest = (TypefaceRequest) obj;
                return ((FontFamilyResolverImpl) this.f$0).resolve(new TypefaceRequest(null, typefaceRequest.fontWeight, typefaceRequest.fontStyle, typefaceRequest.fontSynthesis, typefaceRequest.resourceLoaderCacheKey)).value;
            case 11:
                EditCommand editCommand = (EditCommand) obj;
                String str = ((EditCommand) this.f$0) == editCommand ? " > " : "   ";
                if (editCommand instanceof CommitTextCommand) {
                    sb = new StringBuilder("CommitTextCommand(text.length=");
                    CommitTextCommand commitTextCommand = (CommitTextCommand) editCommand;
                    sb.append(commitTextCommand.annotatedString.text.length());
                    sb.append(", newCursorPosition=");
                    i = commitTextCommand.newCursorPosition;
                } else {
                    if (!(editCommand instanceof SetComposingTextCommand)) {
                        if (editCommand instanceof SetComposingRegionCommand) {
                            concat = ((SetComposingRegionCommand) editCommand).toString();
                        } else if (editCommand instanceof DeleteSurroundingTextCommand) {
                            concat = ((DeleteSurroundingTextCommand) editCommand).toString();
                        } else if (editCommand instanceof DeleteSurroundingTextInCodePointsCommand) {
                            concat = ((DeleteSurroundingTextInCodePointsCommand) editCommand).toString();
                        } else if (editCommand instanceof SetSelectionCommand) {
                            concat = ((SetSelectionCommand) editCommand).toString();
                        } else if (editCommand instanceof FinishComposingTextCommand) {
                            concat = "FinishComposingTextCommand()";
                        } else if (editCommand instanceof DeleteAllCommand) {
                            concat = "DeleteAllCommand()";
                        } else {
                            String simpleName = Reflection.factory.getOrCreateKotlinClass(editCommand.getClass()).getSimpleName();
                            if (simpleName == null) {
                                simpleName = "{anonymous EditCommand}";
                            }
                            concat = "Unknown EditCommand: ".concat(simpleName);
                        }
                        return str.concat(concat);
                    }
                    sb = new StringBuilder("SetComposingTextCommand(text.length=");
                    SetComposingTextCommand setComposingTextCommand = (SetComposingTextCommand) editCommand;
                    sb.append(setComposingTextCommand.annotatedString.text.length());
                    sb.append(", newCursorPosition=");
                    i = setComposingTextCommand.newCursorPosition;
                }
                concat = Animation.CC.m(sb, i, ')');
                return str.concat(concat);
            case 12:
                Navigator navigator = (Navigator) this.f$0;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                NavBackStackEntryImpl navBackStackEntryImpl = navBackStackEntry.impl;
                NavDestination navDestination = navBackStackEntry.destination;
                if (navDestination == null) {
                    navDestination = null;
                }
                if (navDestination == null) {
                    return null;
                }
                navBackStackEntryImpl.getArguments$navigation_common_release();
                NavDestination navigate = navigator.navigate(navDestination);
                if (navigate == null) {
                    return null;
                }
                return navigate.equals(navDestination) ? navBackStackEntry : navigator.getState().createBackStackEntry(navigate, navigate.addInDefaultArgs(navBackStackEntryImpl.getArguments$navigation_common_release()));
            case IMAGE_VALUE:
                AsyncPagingDataDiffer asyncPagingDataDiffer = (AsyncPagingDataDiffer) this.f$0;
                CombinedLoadStates combinedLoadStates = (CombinedLoadStates) obj;
                combinedLoadStates.getClass();
                StateFlowImpl stateFlowImpl = asyncPagingDataDiffer.inGetItem;
                ActivityRecreator.AnonymousClass1 anonymousClass1 = asyncPagingDataDiffer.LoadStateListenerRunnable;
                if (((Boolean) stateFlowImpl.getValue()).booleanValue()) {
                    Handler handler = (Handler) asyncPagingDataDiffer.LoadStateListenerHandler$delegate.getValue();
                    handler.removeCallbacks(anonymousClass1);
                    ((AtomicReference) anonymousClass1.val$callbacks).set(combinedLoadStates);
                    handler.post(anonymousClass1);
                } else {
                    Iterator it = asyncPagingDataDiffer.childLoadStateListeners.iterator();
                    while (it.hasNext()) {
                        ((Function1) it.next()).invoke(combinedLoadStates);
                    }
                }
                return Unit.INSTANCE;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ((SharedFlowImpl) ((Request.Builder) this.f$0).method).tryEmit(null);
                return Unit.INSTANCE;
            case 15:
                ((SimpleProducerScopeImpl) this.f$0).channel.closeOrCancelImpl(null, false);
                return Unit.INSTANCE;
            case LAZY_VERTICAL_GRID_VALUE:
                LoadStateAdapter loadStateAdapter = (LoadStateAdapter) this.f$0;
                CombinedLoadStates combinedLoadStates2 = (CombinedLoadStates) obj;
                combinedLoadStates2.getClass();
                loadStateAdapter.setLoadState(combinedLoadStates2.append);
                return Unit.INSTANCE;
            case VERTICAL_GRID_ITEM_VALUE:
                IntRange intRange = (IntRange) this.f$0;
                TransformablePage transformablePage = (TransformablePage) obj;
                transformablePage.getClass();
                int[] iArr = transformablePage.originalPageOffsets;
                int length = iArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        int i3 = iArr[i2];
                        if (intRange.first > i3 || i3 > intRange.last) {
                            i2++;
                        } else {
                            z = true;
                        }
                    }
                }
                return Boolean.valueOf(z);
            case RADIO_GROUP_VALUE:
                FileMetadata fileMetadata = (FileMetadata) this.f$0;
                FrameworkSQLiteDatabase frameworkSQLiteDatabase = (FrameworkSQLiteDatabase) obj;
                frameworkSQLiteDatabase.getClass();
                fileMetadata.extras = frameworkSQLiteDatabase;
                return Unit.INSTANCE;
            case RADIO_BUTTON_VALUE:
                return (Image) this.f$0;
            case RADIO_ROW_VALUE:
                Ref$IntRef ref$IntRef = (Ref$IntRef) this.f$0;
                int i4 = ref$IntRef.element;
                ref$IntRef.element = i4 + 1;
                return i4 + ":" + ((DimImageTransformation) obj).getCacheKey();
            case RADIO_COLUMN_VALUE:
                return obj == ((AbstractCollection) this.f$0) ? "(this Collection)" : String.valueOf(obj);
            case SIZE_BOX_VALUE:
                PersistentHashMap persistentHashMap = (PersistentHashMap) this.f$0;
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                Object key = entry.getKey();
                StringBuilder sb2 = new StringBuilder(key == persistentHashMap ? "(this Map)" : String.valueOf(key));
                sb2.append('=');
                Object value = entry.getValue();
                sb2.append(value != persistentHashMap ? String.valueOf(value) : "(this Map)");
                return sb2.toString();
            case 23:
                return ((MatcherMatchResult$groups$1) this.f$0).get(((Integer) obj).intValue());
            case 24:
                ((MutexImpl) this.f$0).unlock(null);
                return Unit.INSTANCE;
            case 25:
                PolymorphicSerializer polymorphicSerializer = (PolymorphicSerializer) this.f$0;
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                classSerialDescriptorBuilder.element("type", StringSerializer.descriptor);
                classSerialDescriptorBuilder.element("value", RegexKt.buildSerialDescriptor$default("kotlinx.serialization.Polymorphic<" + polymorphicSerializer.baseClass.getSimpleName() + '>', SerialKind$CONTEXTUAL.INSTANCE, new SerialDescriptor[0]));
                List list = polymorphicSerializer._annotations;
                list.getClass();
                classSerialDescriptorBuilder.annotations = list;
                return Unit.INSTANCE;
            case 26:
                ObjectSerializer objectSerializer = (ObjectSerializer) this.f$0;
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder2 = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder2.getClass();
                List list2 = objectSerializer._annotations;
                list2.getClass();
                classSerialDescriptorBuilder2.annotations = list2;
                return Unit.INSTANCE;
            case 27:
                SerialDescriptor serialDescriptor = (SerialDescriptor) this.f$0;
                int intValue = ((Integer) obj).intValue();
                return serialDescriptor.getElementName(intValue) + ": " + serialDescriptor.getElementDescriptor(intValue).getSerialName();
            case 28:
                TripleSerializer tripleSerializer = (TripleSerializer) this.f$0;
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder3 = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder3.getClass();
                classSerialDescriptorBuilder3.element("first", tripleSerializer.aSerializer.getDescriptor());
                classSerialDescriptorBuilder3.element("second", tripleSerializer.bSerializer.getDescriptor());
                classSerialDescriptorBuilder3.element("third", tripleSerializer.cSerializer.getDescriptor());
                return Unit.INSTANCE;
            default:
                okhttp3.internal.cache.DiskLruCache diskLruCache = (okhttp3.internal.cache.DiskLruCache) this.f$0;
                ((IOException) obj).getClass();
                TimeZone timeZone = _UtilJvmKt.UTC;
                diskLruCache.hasJournalErrors = true;
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ DiskLruCache$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }
}
