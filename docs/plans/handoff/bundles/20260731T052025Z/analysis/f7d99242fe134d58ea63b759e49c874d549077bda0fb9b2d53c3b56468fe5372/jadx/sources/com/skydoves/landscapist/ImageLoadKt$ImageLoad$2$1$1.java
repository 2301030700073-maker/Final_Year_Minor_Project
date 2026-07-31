package com.skydoves.landscapist;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.BoxWithConstraintsScopeImpl;
import androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.internal.NavContext;
import coil3.network.internal.UtilsKt;
import com.fsck.k9.R;
import com.fsck.k9.autocrypt.AutocryptTransferMessageCreator;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.BoundaryGenerator;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeBodyPart;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mail.internet.MimeMultipart;
import com.fsck.k9.mail.internet.TextBody;
import com.fsck.k9.mailstore.FileBackedBody;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager$$ExternalSyntheticLambda0;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.endtoend.AutocryptSetupMessage;
import com.fsck.k9.ui.endtoend.AutocryptSetupMessageLiveEvent;
import com.fsck.k9.ui.endtoend.AutocryptSetupTransferLiveEvent;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment;
import com.fsck.k9.ui.messagelist.MessageListAdapter;
import com.fsck.k9.ui.messagelist.MessageListSwipeCallback;
import com.skydoves.landscapist.coil3.ConstraintsSizeResolver;
import java.io.ByteArrayOutputStream;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.display.visualSettings.message.list.MessageListDateTimeFormat;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$Event;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$State;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.openintents.openpgp.util.OpenPgpApi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageLoadKt$ImageLoad$2$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $constrainable;
    public /* synthetic */ Object $imageOptions;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $this_BoxWithConstraints;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImageLoadKt$ImageLoad$2$1$1(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$imageOptions = obj;
        this.$this_BoxWithConstraints = obj2;
        this.$constrainable = obj3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$this_BoxWithConstraints;
        Object obj3 = this.$constrainable;
        switch (i) {
            case 0:
                return new ImageLoadKt$ImageLoad$2$1$1((ImageOptions) this.$imageOptions, (BoxWithConstraintsScope) obj2, (ConstraintsSizeResolver) obj3, continuation, 0);
            case 1:
                ImageLoadKt$ImageLoad$2$1$1 imageLoadKt$ImageLoad$2$1$1 = new ImageLoadKt$ImageLoad$2$1$1((PointerInputScope) obj2, (TextDragObserver) obj3, continuation, 1);
                imageLoadKt$ImageLoad$2$1$1.$imageOptions = obj;
                return imageLoadKt$ImageLoad$2$1$1;
            case 2:
                return new ImageLoadKt$ImageLoad$2$1$1((MutableState) this.$imageOptions, (DialogNavigator) obj2, (SnapshotStateList) obj3, continuation, 2);
            case 3:
                return new ImageLoadKt$ImageLoad$2$1$1((AutocryptSetupMessageLiveEvent) this.$imageOptions, (OpenPgpApi) obj2, (LegacyAccountDto) obj3, continuation, 3);
            case 4:
                return new ImageLoadKt$ImageLoad$2$1$1((AutocryptSetupTransferLiveEvent) this.$imageOptions, (LegacyAccountDto) obj2, (AutocryptSetupMessage) obj3, continuation, 4);
            case 5:
                ImageLoadKt$ImageLoad$2$1$1 imageLoadKt$ImageLoad$2$1$12 = new ImageLoadKt$ImageLoad$2$1$1((LegacyMessageListFragment) obj2, (Ref$ObjectRef) obj3, continuation, 5);
                imageLoadKt$ImageLoad$2$1$12.$imageOptions = obj;
                return imageLoadKt$ImageLoad$2$1$12;
            case 6:
                ImageLoadKt$ImageLoad$2$1$1 imageLoadKt$ImageLoad$2$1$13 = new ImageLoadKt$ImageLoad$2$1$1((MessageListSwipeCallback) obj2, (List) obj3, continuation, 6);
                imageLoadKt$ImageLoad$2$1$13.$imageOptions = obj;
                return imageLoadKt$ImageLoad$2$1$13;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new ImageLoadKt$ImageLoad$2$1$1((SnapshotStateList) this.$imageOptions, this.$this_BoxWithConstraints, (Function1) obj3, continuation, 7);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new ImageLoadKt$ImageLoad$2$1$1((LegacyUpdateSortCriteria) this.$imageOptions, (LegacyAccount) obj2, (AccountId) obj3, continuation, 8);
            case 9:
                return new ImageLoadKt$ImageLoad$2$1$1((Function2) this.$imageOptions, (InAppNotificationHostStateHolder) obj2, (MutableState) obj3, continuation, 9);
            default:
                return new ImageLoadKt$ImageLoad$2$1$1((MutableState) this.$imageOptions, (Function1) obj2, (MutableState) obj3, continuation, 10);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((ImageLoadKt$ImageLoad$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 1:
                break;
            case 2:
                ((ImageLoadKt$ImageLoad$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 3:
                break;
            case 4:
                ((ImageLoadKt$ImageLoad$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 5:
                ((ImageLoadKt$ImageLoad$2$1$1) create((GeneralSettings) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 6:
                ((ImageLoadKt$ImageLoad$2$1$1) create((Map) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((ImageLoadKt$ImageLoad$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((ImageLoadKt$ImageLoad$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 9:
                ((ImageLoadKt$ImageLoad$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            default:
                ((ImageLoadKt$ImageLoad$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    /* JADX WARN: Type inference failed for: r11v10, types: [byte[], java.io.Serializable, java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long j;
        ListBuilder.Itr itr;
        int i = this.$r8$classId;
        int i2 = 2;
        Continuation continuation = null;
        int i3 = 1;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$this_BoxWithConstraints;
        Object obj3 = this.$constrainable;
        switch (i) {
            case 0:
                BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj2;
                ResultKt.throwOnFailure(obj);
                ImageOptions imageOptions = (ImageOptions) this.$imageOptions;
                if (((int) (imageOptions.m954getRequestSizeYbymL2g() >> 32)) <= 0 || ((int) (imageOptions.m954getRequestSizeYbymL2g() & 4294967295L)) <= 0) {
                    j = ((BoxWithConstraintsScopeImpl) boxWithConstraintsScope).constraints;
                } else {
                    long m954getRequestSizeYbymL2g = imageOptions.m954getRequestSizeYbymL2g();
                    long j2 = ((BoxWithConstraintsScopeImpl) boxWithConstraintsScope).constraints;
                    int i4 = (int) (m954getRequestSizeYbymL2g >> 32);
                    int i5 = (int) (m954getRequestSizeYbymL2g & 4294967295L);
                    if (i4 < 0 || i5 < 0) {
                        InlineClassHelperKt.throwIllegalArgumentException("maxWidth must be >= than minWidth,\nmaxHeight must be >= than minHeight,\nminWidth and minHeight must be >= 0");
                    }
                    j = ConstraintsKt.createConstraints(i4, i4, i5, i5);
                }
                ConstraintsSizeResolver constraintsSizeResolver = (ConstraintsSizeResolver) obj3;
                if (constraintsSizeResolver != null) {
                    constraintsSizeResolver.m963setConstraintsBRTryo0(j);
                }
                return unit;
            case 1:
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.$imageOptions;
                PointerInputScope pointerInputScope = (PointerInputScope) obj2;
                TextDragObserver textDragObserver = (TextDragObserver) obj3;
                CoreTextFieldKt$TextFieldCursorHandle$2$1.AnonymousClass1.C00011 c00011 = new CoreTextFieldKt$TextFieldCursorHandle$2$1.AnonymousClass1.C00011(pointerInputScope, textDragObserver, continuation, i3);
                CoroutineStart coroutineStart = CoroutineStart.UNDISPATCHED;
                JobKt.launch$default(coroutineScope, null, coroutineStart, c00011, 1);
                return JobKt.launch$default(coroutineScope, null, coroutineStart, new CoreTextFieldKt$TextFieldCursorHandle$2$1.AnonymousClass1.C00011(pointerInputScope, textDragObserver, continuation, i2), 1);
            case 2:
                ResultKt.throwOnFailure(obj);
                DialogNavigator dialogNavigator = (DialogNavigator) obj2;
                SnapshotStateList snapshotStateList = (SnapshotStateList) obj3;
                for (NavBackStackEntry navBackStackEntry : (Set) ((MutableState) this.$imageOptions).getValue()) {
                    if (!((List) dialogNavigator.getState().backStack.$$delegate_0.getValue()).contains(navBackStackEntry) && !snapshotStateList.contains(navBackStackEntry)) {
                        dialogNavigator.getState().markTransitionComplete(navBackStackEntry);
                    }
                }
                return unit;
            case 3:
                ResultKt.throwOnFailure(obj);
                AutocryptSetupMessageLiveEvent autocryptSetupMessageLiveEvent = (AutocryptSetupMessageLiveEvent) this.$imageOptions;
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) obj3;
                autocryptSetupMessageLiveEvent.getClass();
                long[] jArr = {legacyAccountDto.getOpenPgpKey()};
                Pattern pattern = Address.ATOM;
                Address address = K9MailLib.m931parse(legacyAccountDto.getIdentity(0).email)[0];
                Intent intent = new Intent("autocrypt_key_transfer");
                intent.putExtra("key_ids", jArr);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Intent executeApi = ((OpenPgpApi) obj2).executeApi(intent, byteArrayOutputStream);
                ?? byteArray = byteArrayOutputStream.toByteArray();
                PendingIntent pendingIntent = (PendingIntent) Utf8.SafeProcessor.getParcelableExtra(executeApi, "intent", PendingIntent.class);
                if (pendingIntent == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing result intent");
                    return null;
                }
                AutocryptTransferMessageCreator autocryptTransferMessageCreator = autocryptSetupMessageLiveEvent.messageCreator;
                byteArray.getClass();
                Context context = autocryptTransferMessageCreator.stringProvider.context;
                address.getClass();
                try {
                    String string = context.getString(R.string.ac_transfer_msg_subject);
                    string.getClass();
                    String string2 = context.getString(R.string.ac_transfer_msg_body);
                    string2.getClass();
                    MimeBodyPart create = MimeBodyPart.create(new TextBody(string2));
                    MimeBodyPart create2 = MimeBodyPart.create(new FileBackedBody(1, byteArray, "7bit"));
                    LocalFolder.AnonymousClass8 anonymousClass8 = create2.mHeader;
                    anonymousClass8.setHeader(UtilsKt.CONTENT_TYPE, "application/autocrypt-setup");
                    anonymousClass8.setHeader("Content-Disposition", "attachment; filename=\"autocrypt-setup-message\"");
                    MimeMultipart mimeMultipart = new MimeMultipart(BoundaryGenerator.INSTANCE.generateBoundary());
                    mimeMultipart.addBodyPart(create);
                    mimeMultipart.addBodyPart(create2);
                    MimeMessage mimeMessage = new MimeMessage(true);
                    LocalFolder.AnonymousClass8 anonymousClass82 = mimeMessage.mHeader;
                    JisSupport.setBody(mimeMessage, mimeMultipart);
                    Date date = new Date();
                    mimeMessage.setFlag(Flag.X_DOWNLOADED_FULL, true);
                    mimeMessage.setSubject(string);
                    anonymousClass82.setHeader("Autocrypt-Setup-Message", "v1");
                    mimeMessage.mInternalDate = date;
                    mimeMessage.addSentDate(date, ((DefaultGeneralSettingsManager) autocryptTransferMessageCreator.generalSettingsManager).getSettings().privacy.isHideTimeZone);
                    mimeMessage.setFrom(address);
                    anonymousClass82.setHeader("To", address.toEncodedString());
                    return new AutocryptSetupMessage(mimeMessage, pendingIntent);
                } catch (MessagingException e) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1(e);
                    return null;
                }
            case 4:
                ResultKt.throwOnFailure(obj);
                ((AutocryptSetupTransferLiveEvent) this.$imageOptions).messagingController.getBackend((LegacyAccountDto) obj2).sendMessage(((AutocryptSetupMessage) obj3).setupMessage);
                return unit;
            case 5:
                GeneralSettings generalSettings = (GeneralSettings) this.$imageOptions;
                ResultKt.throwOnFailure(obj);
                boolean z = generalSettings.display.inboxSettings.isThreadedViewEnabled;
                LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) obj2;
                if (legacyMessageListFragment.showingThreadedList != z) {
                    legacyMessageListFragment.showingThreadedList = z;
                    legacyMessageListFragment.loadMessageList(true);
                }
                MessageListDateTimeFormat messageListDateTimeFormat = generalSettings.display.visualSettings.messageListSettings.dateTimeFormat;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj3;
                if (ref$ObjectRef.element != messageListDateTimeFormat) {
                    ref$ObjectRef.element = messageListDateTimeFormat;
                    MessageListAdapter messageListAdapter = legacyMessageListFragment.adapter;
                    if (messageListAdapter == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        throw null;
                    }
                    messageListAdapter.mObservable.notifyItemRangeChanged(0, messageListAdapter.viewItems.size(), null);
                }
                return unit;
            case 6:
                Map map = (Map) this.$imageOptions;
                ResultKt.throwOnFailure(obj);
                MessageListSwipeCallback messageListSwipeCallback = (MessageListSwipeCallback) obj2;
                LinkedHashMap linkedHashMap = messageListSwipeCallback.swipeLeftConfig;
                List list = (List) obj3;
                linkedHashMap.clear();
                NavContext navContext = messageListSwipeCallback.resourceProvider;
                linkedHashMap.putAll(MessageListSwipeCallback.access$setupSwipeActionConfig(messageListSwipeCallback, map, list, navContext, true));
                LinkedHashMap linkedHashMap2 = messageListSwipeCallback.swipeRightConfig;
                linkedHashMap2.clear();
                linkedHashMap2.putAll(MessageListSwipeCallback.access$setupSwipeActionConfig(messageListSwipeCallback, map, list, navContext, false));
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ResultKt.throwOnFailure(obj);
                SnapshotStateList snapshotStateList2 = (SnapshotStateList) this.$imageOptions;
                Function1 function1 = (Function1) obj3;
                if (snapshotStateList2 == null || !snapshotStateList2.isEmpty()) {
                    ListIterator listIterator = snapshotStateList2.listIterator();
                    do {
                        itr = (ListBuilder.Itr) listIterator;
                        if (itr.hasNext()) {
                        }
                    } while (!Intrinsics.areEqual(function1.invoke(itr.next()), function1.invoke(obj2)));
                    return unit;
                }
                snapshotStateList2.add(obj2);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ResultKt.throwOnFailure(obj);
                LegacyUpdateSortCriteria legacyUpdateSortCriteria = (LegacyUpdateSortCriteria) this.$imageOptions;
                Sink$CC.debug$default(legacyUpdateSortCriteria.logger, "LegacyUpdateSortCriteria", null, new DefaultOutboxFolderManager$$ExternalSyntheticLambda0((AccountId) obj3, 4), 2);
                DefaultLegacyAccountManager defaultLegacyAccountManager = legacyUpdateSortCriteria.accountManager;
                defaultLegacyAccountManager.getClass();
                defaultLegacyAccountManager.saveAccount((LegacyAccount) obj2);
                return unit;
            case 9:
                ResultKt.throwOnFailure(obj);
                ((InAppNotificationHostStateHolder.InAppNotificationHostStateImpl) ((MutableState) obj3).getValue()).getClass();
                return unit;
            default:
                MutableState mutableState = (MutableState) obj3;
                ResultKt.throwOnFailure(obj);
                if (((ThundermailContract$State) ((MutableState) this.$imageOptions).getValue()).initialized && !((Boolean) mutableState.getValue()).booleanValue()) {
                    ((Function1) obj2).invoke(ThundermailContract$Event.SignInClicked.INSTANCE);
                    mutableState.setValue(Boolean.TRUE);
                }
                return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImageLoadKt$ImageLoad$2$1$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$this_BoxWithConstraints = obj;
        this.$constrainable = obj2;
    }
}
