package net.thunderbird.core.ui.setting.dialog.ui.components.list;

import androidx.camera.core.streamsharing.VirtualCameraCaptureResult;
import androidx.camera.view.PreviewView;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.foundation.gestures.DraggableKt$NoOpOnDragStarted$1;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.unit.Velocity;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.mailstore.DefaultAttachmentViewInfoMapper;
import com.fsck.k9.sasl.OAuthBearer;
import com.google.zxing.BinaryBitmap;
import com.jcraft.jzlib.Adler32;
import de.cketti.changelog.ChangeLog;
import de.cketti.changelog.ReleaseItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeDirection;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableKt;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.storage.legacy.LegacyAccountStorageHandler;
import net.thunderbird.feature.changelog.internal.ChangelogContract$State;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;
import net.thunderbird.feature.changelog.internal.ChangelogViewModel;
import net.thunderbird.feature.changelog.internal.ReleaseUiModel;
import net.thunderbird.feature.mail.message.list.domain.SetAccountFolderOutcome$Error;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogViewModel;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.mail.message.reader.api.domain.mapper.AttachmentViewInfoMapper;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$Event$UpdateAttachments;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$State;
import net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem;
import net.thunderbird.feature.mail.message.reader.impl.ui.MessageReaderViewModel;
import net.thunderbird.feature.navigation.changelog.api.ChangeLogMode;
import net.thunderbird.feature.notification.NotificationLight;
import net.thunderbird.feature.notification.NotificationSettings;
import net.thunderbird.feature.notification.NotificationVibration;
import net.thunderbird.feature.notification.VibratePattern;
import net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollBehaviour;
import net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollState;
import okhttp3.ConnectionPool;
import okhttp3.internal.http2.Http2Connection;
import okio.Okio;
import okio.PriorityQueue;
import org.jsoup.nodes.NodeUtils;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SettingListKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ SettingListKt$$ExternalSyntheticLambda0(Function1 function1, SettingValue.IconList iconList, SettingValue.IconList.IconOption iconOption) {
        this.$r8$classId = 2;
        this.f$2 = function1;
        this.f$0 = iconList;
        this.f$1 = iconOption;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ArrayList<ReleaseItem> merge;
        Object file;
        int i = this.$r8$classId;
        final SwipeAction swipeAction = null;
        Unit unit = Unit.INSTANCE;
        boolean z = false;
        Object obj2 = this.f$2;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                ImmutableList immutableList = (ImmutableList) obj4;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                lazyListIntervalContent.items(((AbstractCollection) immutableList).getSize(), null, new ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3(4, immutableList), new ComposableLambdaImpl(2039820996, new SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3(immutableList, (Function2) obj3, (Function1) obj2, 0), true));
                return unit;
            case 1:
                PreviewView.AnonymousClass1 anonymousClass1 = (PreviewView.AnonymousClass1) obj4;
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                pointerInputChange.getClass();
                OAuthBearer.m940addPointerInputChange0AR0LA0(anonymousClass1, pointerInputChange, 0L);
                SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = (SuspendingPointerInputModifierNodeImpl) ((PointerInputScope) obj3);
                suspendingPointerInputModifierNodeImpl.getClass();
                float maximumFlingVelocity = HitTestResultKt.requireLayoutNode(suspendingPointerInputModifierNodeImpl).viewConfiguration.getMaximumFlingVelocity();
                long m97calculateVelocityAH228Gc = anonymousClass1.m97calculateVelocityAH228Gc(Util.Velocity(maximumFlingVelocity, maximumFlingVelocity));
                VirtualCameraCaptureResult virtualCameraCaptureResult = (VirtualCameraCaptureResult) anonymousClass1.this$0;
                VelocityTracker1D velocityTracker1D = (VelocityTracker1D) virtualCameraCaptureResult.mBaseCameraCaptureResult;
                ArraysKt___ArraysKt.fill(0, r3.length, null, velocityTracker1D.samples);
                velocityTracker1D.index = 0;
                VelocityTracker1D velocityTracker1D2 = (VelocityTracker1D) virtualCameraCaptureResult.mTagBundle;
                ArraysKt___ArraysKt.fill(0, r11.length, null, velocityTracker1D2.samples);
                velocityTracker1D2.index = 0;
                virtualCameraCaptureResult.mTimestamp = 0L;
                BufferedChannel bufferedChannel = ((DraggableNode) obj2).channel;
                if (bufferedChannel != null) {
                    DraggableKt$NoOpOnDragStarted$1 draggableKt$NoOpOnDragStarted$1 = DraggableKt.NoOpOnDragStarted;
                    bufferedChannel.mo1016trySendJP2dKIU(new DragEvent.DragStopped(Util.Velocity(Float.isNaN(Velocity.m779getXimpl(m97calculateVelocityAH228Gc)) ? 0.0f : Velocity.m779getXimpl(m97calculateVelocityAH228Gc), Float.isNaN(Velocity.m780getYimpl(m97calculateVelocityAH228Gc)) ? 0.0f : Velocity.m780getYimpl(m97calculateVelocityAH228Gc))));
                }
                return unit;
            case 2:
                SettingValue.IconList iconList = (SettingValue.IconList) obj4;
                SettingValue.IconList.IconOption iconOption = (SettingValue.IconList.IconOption) obj3;
                ((SettingValue.IconList.IconOption) obj).getClass();
                String str = iconList.id;
                Function0 function0 = iconList.title;
                Function0 function02 = iconList.description;
                Function0 function03 = iconList.icon;
                long j = iconList.color;
                ImmutableList immutableList2 = iconList.icons;
                iconOption.getClass();
                immutableList2.getClass();
                ((Function1) obj2).invoke(new SettingValue.IconList(str, function0, function02, function03, j, iconOption, immutableList2));
                return unit;
            case 3:
                InMemoryStorage inMemoryStorage = (InMemoryStorage) obj4;
                ConnectionPool connectionPool = (ConnectionPool) obj3;
                LegacyAccountStorageHandler legacyAccountStorageHandler = (LegacyAccountStorageHandler) obj2;
                ((NotificationSettings) obj).getClass();
                boolean z2 = inMemoryStorage.getBoolean(connectionPool.create("ring"), true);
                String stringOrNull = inMemoryStorage.getStringOrNull(connectionPool.create("ringtone"));
                if (stringOrNull == null) {
                    stringOrNull = "content://settings/system/notification_sound";
                }
                String str2 = stringOrNull;
                String create = connectionPool.create("notificationLight");
                NotificationLight notificationLight = NotificationLight.Disabled;
                try {
                    String stringOrNull2 = inMemoryStorage.getStringOrNull(create);
                    if (stringOrNull2 != null) {
                        try {
                            NotificationLight valueOf = NotificationLight.valueOf(stringOrNull2);
                            if (valueOf != null) {
                                notificationLight = valueOf;
                            }
                        } catch (IllegalArgumentException e) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Unable to convert stored key [" + create + "] value [" + stringOrNull2 + "] ");
                            String qualifiedName = Reflection.getOrCreateKotlinClass(NotificationLight.class).getQualifiedName();
                            StringBuilder sb2 = new StringBuilder("to enum of type ");
                            sb2.append(qualifiedName);
                            sb2.append(".");
                            sb.append(sb2.toString());
                            sb.append('\n');
                            sb.append("Valid values: ".concat(ArraysKt___ArraysKt.joinToString$default(NotificationLight.values(), null, null, null, null, 63)));
                            throw new IllegalArgumentException(sb.toString(), e);
                        }
                    }
                } catch (IllegalArgumentException e2) {
                    Sink$CC.warn$default(legacyAccountStorageHandler.logger, e2, new Http2Connection.ReaderRunnable(28, create, notificationLight), 1);
                }
                boolean z3 = inMemoryStorage.getBoolean(connectionPool.create("vibrate"), false);
                int i2 = inMemoryStorage.getInt(connectionPool.create("vibratePattern"), 0);
                VibratePattern.Companion.getClass();
                return new NotificationSettings(z2, str2, notificationLight, new NotificationVibration(z3, Adler32.deserialize(i2), inMemoryStorage.getInt(connectionPool.create("vibrateTimes"), 5)));
            case 4:
                ChangeLog changeLog = (ChangeLog) obj2;
                ((ChangelogContract$State) obj).getClass();
                boolean z4 = ((GeneralSettings) obj4).display.miscSettings.showRecentChanges;
                if (((ChangelogViewModel) obj3).mode == ChangeLogMode.CHANGE_LOG) {
                    BinaryBitmap binaryBitmap = changeLog.changeLogProvider;
                    merge = BinaryBitmap.merge(((PriorityQueue) binaryBitmap.binarizer).getChangeLog(), ((PriorityQueue) binaryBitmap.matrix).getChangeLog());
                } else {
                    BinaryBitmap binaryBitmap2 = changeLog.changeLogProvider;
                    int i3 = changeLog.lastVersionCode;
                    merge = BinaryBitmap.merge(((PriorityQueue) binaryBitmap2.binarizer).getChangeLogSince(i3), ((PriorityQueue) binaryBitmap2.matrix).getChangeLogSince(i3));
                }
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(merge, 10));
                for (ReleaseItem releaseItem : merge) {
                    releaseItem.getClass();
                    boolean z5 = releaseItem.versionCode == changeLog.currentVersionCode ? true : z;
                    String str3 = releaseItem.versionName;
                    str3.getClass();
                    String str4 = releaseItem.date;
                    List list = releaseItem.changes;
                    list.getClass();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Object obj5 : list) {
                        String str5 = (String) obj5;
                        str5.getClass();
                        String name = NodeUtils.getType(str5).name();
                        Object obj6 = linkedHashMap.get(name);
                        if (obj6 == null) {
                            obj6 = new ArrayList();
                            linkedHashMap.put(name, obj6);
                        }
                        ((List) obj6).add(obj5);
                    }
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap.size()));
                    for (Map.Entry entry : linkedHashMap.entrySet()) {
                        Object key = entry.getKey();
                        List<String> list2 = (List) entry.getValue();
                        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                        for (String str6 : list2) {
                            str6.getClass();
                            arrayList2.add(StringsKt.trim(StringsKt.removePrefix(str6, NodeUtils.getType(str6).asPrefix())).toString());
                        }
                        linkedHashMap2.put(key, arrayList2);
                    }
                    arrayList.add(new ReleaseUiModel(str3, str4, z5, linkedHashMap2));
                    z = false;
                }
                ImmutableList immutableList3 = Okio.toImmutableList(arrayList);
                immutableList3.getClass();
                return new ChangelogContract$State(immutableList3, z4);
            case 5:
                SwipeActions swipeActions = (SwipeActions) obj4;
                Function1 function1 = (Function1) obj2;
                final MessageItemUi messageItemUi = (MessageItemUi) obj3;
                SwipeDirection swipeDirection = (SwipeDirection) obj;
                swipeDirection.getClass();
                if (swipeActions != null) {
                    int ordinal = swipeDirection.ordinal();
                    if (ordinal == 0) {
                        swipeAction = swipeActions.rightAction;
                    } else if (ordinal == 1) {
                        swipeAction = swipeActions.leftAction;
                    }
                    if (swipeAction != null) {
                        function1.invoke(new MessageListEvent(messageItemUi, swipeAction) { // from class: net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnSwipeMessage
                            public final MessageItemUi message;
                            public final SwipeAction swipeAction;

                            {
                                this.message = messageItemUi;
                                this.swipeAction = swipeAction;
                            }

                            public final boolean equals(Object obj7) {
                                if (this == obj7) {
                                    return true;
                                }
                                if (!(obj7 instanceof MessageItemEvent$OnSwipeMessage)) {
                                    return false;
                                }
                                MessageItemEvent$OnSwipeMessage messageItemEvent$OnSwipeMessage = (MessageItemEvent$OnSwipeMessage) obj7;
                                return this.message.equals(messageItemEvent$OnSwipeMessage.message) && this.swipeAction == messageItemEvent$OnSwipeMessage.swipeAction;
                            }

                            public final int hashCode() {
                                return this.swipeAction.hashCode() + (this.message.hashCode() * 31);
                            }

                            public final String toString() {
                                return "OnSwipeMessage(message=" + this.message + ", swipeAction=" + this.swipeAction + ")";
                            }
                        });
                    }
                }
                return unit;
            case 6:
                SetAccountFolderOutcome$Error setAccountFolderOutcome$Error = (SetAccountFolderOutcome$Error) obj4;
                SetupArchiveFolderDialogContract$State.ChooseArchiveFolder chooseArchiveFolder = (SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) obj3;
                SetupArchiveFolderDialogViewModel setupArchiveFolderDialogViewModel = (SetupArchiveFolderDialogViewModel) obj2;
                StringsResourceManager stringsResourceManager = setupArchiveFolderDialogViewModel.resourceManager;
                if (Intrinsics.areEqual(setAccountFolderOutcome$Error, SetAccountFolderOutcome$Error.AccountNotFound.INSTANCE)) {
                    return SetupArchiveFolderDialogContract$State.ChooseArchiveFolder.copy$default(chooseArchiveFolder, null, ((AndroidResourceManager) stringsResourceManager).stringResource(R.string.setup_archive_folder_set_archive_error_account_not_found, setupArchiveFolderDialogViewModel.accountId), 15);
                }
                if (setAccountFolderOutcome$Error instanceof SetAccountFolderOutcome$Error.UnhandledError) {
                    return SetupArchiveFolderDialogContract$State.ChooseArchiveFolder.copy$default(chooseArchiveFolder, null, ((AndroidResourceManager) stringsResourceManager).stringResource(R.string.setup_archive_folder_unhandled_error, ((SetAccountFolderOutcome$Error.UnhandledError) setAccountFolderOutcome$Error).throwable.message), 15);
                }
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                MessageReaderViewContract$Event$UpdateAttachments messageReaderViewContract$Event$UpdateAttachments = (MessageReaderViewContract$Event$UpdateAttachments) obj2;
                ((MessageReaderViewContract$State) obj).getClass();
                AttachmentViewInfoMapper attachmentViewInfoMapper = ((MessageReaderViewModel) obj4).attachmentViewInfoMapper;
                ArrayList arrayList3 = new ArrayList();
                Iterator it = ((ArrayList) obj3).iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!((AttachmentViewInfo) next).inlineAttachment) {
                        arrayList3.add(next);
                    }
                }
                ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList3, 10));
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    AttachmentViewInfo attachmentViewInfo = (AttachmentViewInfo) it2.next();
                    boolean contains = messageReaderViewContract$Event$UpdateAttachments.extraNonInlineAttachments.contains(attachmentViewInfo);
                    DefaultAttachmentViewInfoMapper defaultAttachmentViewInfoMapper = (DefaultAttachmentViewInfoMapper) attachmentViewInfoMapper;
                    defaultAttachmentViewInfoMapper.getClass();
                    attachmentViewInfo.getClass();
                    boolean z6 = attachmentViewInfo.inlineAttachment;
                    String str7 = attachmentViewInfo.uri;
                    long j2 = attachmentViewInfo.size;
                    String str8 = j2 == -1 ? "" : (String) defaultAttachmentViewInfoMapper.sizeFormatter.invoke(Long.valueOf(j2));
                    if (attachmentViewInfo.isSupportedImage() && attachmentViewInfo.isContentAvailable) {
                        str7.getClass();
                        file = new AttachmentUiItem.RemoteImage(str7, attachmentViewInfo.uri, attachmentViewInfo.filename, str8, j2, attachmentViewInfo.mimeType, attachmentViewInfo.part, attachmentViewInfo.isContentAvailable, contains);
                    } else if (attachmentViewInfo.isSupportedImage() && z6) {
                        str7.getClass();
                        file = new AttachmentUiItem.InlinedImage(str7, attachmentViewInfo.uri, attachmentViewInfo.filename, str8, j2, attachmentViewInfo.mimeType, attachmentViewInfo.part, attachmentViewInfo.isContentAvailable, contains);
                    } else if (z6) {
                        str7.getClass();
                        file = new AttachmentUiItem.InlinedFile(str7, attachmentViewInfo.filename, str8, j2, attachmentViewInfo.mimeType, attachmentViewInfo.part, attachmentViewInfo.isContentAvailable, contains);
                    } else {
                        str7.getClass();
                        file = new AttachmentUiItem.File(str7, attachmentViewInfo.filename, str8, j2, attachmentViewInfo.mimeType, attachmentViewInfo.part, attachmentViewInfo.isContentAvailable, contains);
                    }
                    arrayList4.add(file);
                }
                AbstractPersistentList persistentList = Okio.toPersistentList(arrayList4);
                persistentList.getClass();
                return new MessageReaderViewContract$State(persistentList);
            default:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj4;
                Ref$FloatRef ref$FloatRef2 = (Ref$FloatRef) obj2;
                AnimationScope animationScope = (AnimationScope) obj;
                animationScope.getClass();
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = animationScope.value$delegate;
                float floatValue = ((Number) parcelableSnapshotMutableState.getValue()).floatValue() - ref$FloatRef.element;
                BannerInlineListScrollState bannerInlineListScrollState = ((BannerInlineListScrollBehaviour) obj3).state;
                float floatValue2 = bannerInlineListScrollState.bannerInlineListHeightOffset$delegate.getFloatValue();
                float f = floatValue2 + floatValue;
                if (f > 0.0f) {
                    f = 0.0f;
                }
                bannerInlineListScrollState.bannerInlineListHeightOffset$delegate.setFloatValue(f);
                float abs = Math.abs(floatValue2 - bannerInlineListScrollState.bannerInlineListHeightOffset$delegate.getFloatValue());
                ref$FloatRef.element = ((Number) parcelableSnapshotMutableState.getValue()).floatValue();
                ref$FloatRef2.element = ((Number) animationScope.typeConverter.convertFromVector.invoke(animationScope.velocityVector)).floatValue();
                if (Math.abs(floatValue - abs) > 0.5f) {
                    animationScope.cancelAnimation();
                    bannerInlineListScrollState.contentOffset$delegate.setFloatValue(0.0f);
                }
                return unit;
        }
    }

    public /* synthetic */ SettingListKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    public /* synthetic */ SettingListKt$$ExternalSyntheticLambda0(SwipeActions swipeActions, Function1 function1, MessageItemUi messageItemUi) {
        this.$r8$classId = 5;
        this.f$0 = swipeActions;
        this.f$2 = function1;
        this.f$1 = messageItemUi;
    }
}
