package kotlinx.serialization;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.datetime.internal.format.parser.NumberSpanParserOperation;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind$ENUM;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.internal.EnumDescriptor;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecodingException;
import kotlinx.serialization.json.JsonNames;
import kotlinx.serialization.json.internal.WriteModeKt;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeDirection;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.message.list.domain.model.SortCriteria;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.MailDisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts$getMessageCountsFlow$1$$ExternalSyntheticLambda0;
import net.thunderbird.feature.notification.api.content.Notification;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import net.thunderbird.feature.thundermail.navigation.ThundermailRoute;
import okhttp3.Handshake;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.platform.Platform;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SealedClassSerializer$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ SealedClassSerializer$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        String[] names;
        long initialWindowSize;
        Http2Stream[] http2StreamArr = null;
        int i = 0;
        switch (this.$r8$classId) {
            case 0:
                return Handshake.Companion.buildSerialDescriptor((String) this.f$0, PolymorphicKind$OPEN.INSTANCE$1, new SerialDescriptor[0], new SealedClassSerializer$$ExternalSyntheticLambda1((SealedClassSerializer) this.f$1, i));
            case 1:
                return "Only found " + ((Ref$IntRef) this.f$0).element + " digits in a row, but need to parse " + ((NumberSpanParserOperation) this.f$1).getWhatThisExpects();
            case 2:
                EnumSerializer enumSerializer = (EnumSerializer) this.f$1;
                String str = (String) this.f$0;
                Enum[] enumArr = enumSerializer.values;
                EnumDescriptor enumDescriptor = new EnumDescriptor(str, enumArr.length);
                for (Enum r0 : enumArr) {
                    enumDescriptor.addElement(r0.name(), false);
                }
                return enumDescriptor;
            case 3:
                return Handshake.Companion.buildSerialDescriptor((String) this.f$0, StructureKind$MAP.INSTANCE$3, new SerialDescriptor[0], new ForwardingFileSystem$$ExternalSyntheticLambda0(2, (ObjectSerializer) this.f$1));
            case 4:
                SerialDescriptor serialDescriptor = (SerialDescriptor) this.f$0;
                Json json = (Json) this.f$1;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                ProvidedValue providedValue = json.configuration;
                WriteModeKt.namingStrategy(serialDescriptor, json);
                int elementsCount = serialDescriptor.getElementsCount();
                for (int i2 = 0; i2 < elementsCount; i2++) {
                    List elementAnnotations = serialDescriptor.getElementAnnotations(i2);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : elementAnnotations) {
                        if (obj instanceof JsonNames) {
                            arrayList.add(obj);
                        }
                    }
                    JsonNames jsonNames = (JsonNames) (arrayList.size() == 1 ? arrayList.get(0) : null);
                    if (jsonNames != null && (names = jsonNames.names()) != null) {
                        for (String str2 : names) {
                            String str3 = Intrinsics.areEqual(serialDescriptor.getKind(), SerialKind$ENUM.INSTANCE) ? "enum value" : "property";
                            if (linkedHashMap.containsKey(str2)) {
                                throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "The suggested name '" + str2 + "' for " + str3 + ' ' + serialDescriptor.getElementName(i2) + " is already one of the names for " + str3 + ' ' + serialDescriptor.getElementName(((Number) MapsKt__MapsKt.getValue(linkedHashMap, str2)).intValue()) + " in " + serialDescriptor, null, null, null));
                            }
                            linkedHashMap.put(str2, Integer.valueOf(i2));
                        }
                    }
                }
                return linkedHashMap.isEmpty() ? EmptyMap.INSTANCE : linkedHashMap;
            case 5:
                return "updateAccountSortCriteria() called with: accountId = " + ((AccountId) this.f$0) + ", sortCriteria = " + ((SortCriteria) this.f$1);
            case 6:
                ((Function1) this.f$0).invoke((SwipeDirection) this.f$1);
                return Boolean.TRUE;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Function1 function1 = (Function1) this.f$0;
                SettingValue.IconList.IconOption iconOption = (SettingValue.IconList.IconOption) this.f$1;
                if (function1 != null) {
                    function1.invoke(iconOption);
                }
                return Unit.INSTANCE;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Function1) this.f$1).invoke((String) this.f$0);
                return Unit.INSTANCE;
            case 9:
                ((GetDisplayAccounts) this.f$0).messageListRepository.removeListener((GetDisplayAccounts$getMessageCountsFlow$1$$ExternalSyntheticLambda0) this.f$1);
                return Unit.INSTANCE;
            case 10:
                return "Flattened path for " + ((MailDisplayFolder) this.f$0).folder.name + " → " + ((ArrayList) this.f$1);
            case 11:
                ((Function1) this.f$0).invoke((NotificationAction) this.f$1);
                return Unit.INSTANCE;
            case BasicTextKt.ShiftMeta /* 12 */:
                return "create() called with: notification = " + ((Notification) this.f$0) + ", action = " + ((NotificationAction) this.f$1);
            case 13:
                ((FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) this.f$1).invoke(new ThundermailRoute.OnboardComplete((String) this.f$0));
                return Unit.INSTANCE;
            case 14:
                Http2Connection http2Connection = (Http2Connection) this.f$0;
                Http2Stream http2Stream = (Http2Stream) this.f$1;
                try {
                    http2Connection.listener.onStream(http2Stream);
                } catch (IOException e) {
                    Platform platform = Platform.platform;
                    Platform.platform.log(4, "Http2Connection.Listener failure for " + http2Connection.connectionName, e);
                    try {
                        http2Stream.close(ErrorCode.PROTOCOL_ERROR, e);
                    } catch (IOException unused) {
                    }
                }
                return Unit.INSTANCE;
            case OffsetKt.Horizontal /* 15 */:
                Http2Connection.ReaderRunnable readerRunnable = (Http2Connection.ReaderRunnable) this.f$0;
                Settings settings = (Settings) this.f$1;
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                Http2Connection http2Connection2 = (Http2Connection) readerRunnable.this$0;
                synchronized (http2Connection2.writer) {
                    synchronized (http2Connection2) {
                        try {
                            Settings settings2 = http2Connection2.peerSettings;
                            Settings settings3 = new Settings();
                            settings2.getClass();
                            for (int i3 = 0; i3 < 10; i3++) {
                                if (((1 << i3) & settings2.set) != 0) {
                                    settings3.set(i3, settings2.values[i3]);
                                }
                            }
                            for (int i4 = 0; i4 < 10; i4++) {
                                if (((1 << i4) & settings.set) != 0) {
                                    settings3.set(i4, settings.values[i4]);
                                }
                            }
                            ref$ObjectRef.element = settings3;
                            initialWindowSize = settings3.getInitialWindowSize() - settings2.getInitialWindowSize();
                            if (initialWindowSize != 0 && !http2Connection2.streams.isEmpty()) {
                                http2StreamArr = (Http2Stream[]) http2Connection2.streams.values().toArray(new Http2Stream[0]);
                            }
                            Settings settings4 = (Settings) ref$ObjectRef.element;
                            settings4.getClass();
                            http2Connection2.peerSettings = settings4;
                            TaskQueue.execute$default(http2Connection2.settingsListenerQueue, http2Connection2.connectionName + " onSettings", new SealedClassSerializer$$ExternalSyntheticLambda0(16, http2Connection2, ref$ObjectRef));
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    try {
                        http2Connection2.writer.applyAndAckSettings((Settings) ref$ObjectRef.element);
                    } catch (IOException e2) {
                        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                        http2Connection2.close$okhttp(errorCode, errorCode, e2);
                    }
                }
                if (http2StreamArr != null) {
                    int length = http2StreamArr.length;
                    while (i < length) {
                        Http2Stream http2Stream2 = http2StreamArr[i];
                        synchronized (http2Stream2) {
                            http2Stream2.writeBytesMaximum += initialWindowSize;
                            if (initialWindowSize > 0) {
                                http2Stream2.notifyAll();
                            }
                        }
                        i++;
                    }
                }
                return Unit.INSTANCE;
            default:
                Http2Connection http2Connection3 = (Http2Connection) this.f$0;
                http2Connection3.listener.onSettings(http2Connection3, (Settings) ((Ref$ObjectRef) this.f$1).element);
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ SealedClassSerializer$$ExternalSyntheticLambda0(int i, Object obj, String str) {
        this.$r8$classId = i;
        this.f$1 = obj;
        this.f$0 = str;
    }
}
