package androidx.core.app;

import android.app.Notification;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.appcompat.app.AlertDialog;
import androidx.collection.ArraySet;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.core.app.NotificationChannelCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.preference.PreferenceManager;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonEncodingException;
import kotlinx.serialization.json.internal.ByteArrayPool;
import kotlinx.serialization.json.internal.CharArrayPool;
import kotlinx.serialization.json.internal.InternalJsonWriter;
import kotlinx.serialization.json.internal.JsonPath$Tombstone;
import kotlinx.serialization.json.internal.StringOpsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.error.ErrorActivity$$ExternalSyntheticLambda4;
import org.schabi.newpipe.extractor.exceptions.AccountTerminatedException;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.local.feed.FeedFragment;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda9;
import org.schabi.newpipe.local.feed.service.FeedLoadService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationCompatBuilder implements InternalJsonWriter, Consumer {
    public final /* synthetic */ int $r8$classId;
    public Object mBuilder;
    public Object mBuilderCompat;
    public Object mExtras;
    public int mGroupAlertBehavior;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api28Impl {
        public static void setSemanticAction(Notification.Action.Builder builder) {
            builder.setSemanticAction(0);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api31Impl {
        public static void setAuthenticationRequired(Notification.Action.Builder builder) {
            builder.setAuthenticationRequired(false);
        }

        public static void setForegroundServiceBehavior(Notification.Builder builder, int i) {
            builder.setForegroundServiceBehavior(i);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api36Impl {
        public static void setShortCriticalText(Notification.Builder builder) {
            builder.setShortCriticalText(null);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api37Impl {
        public static void setEmphasisHint(Notification.Action.Builder builder) {
            builder.setEmphasisHint(0);
        }

        public static void setStyleHint(Notification.Action.Builder builder) {
            builder.setStyleHint(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NotificationCompatBuilder(NotificationCompat$Builder notificationCompat$Builder) {
        ArrayList arrayList;
        String str;
        int i;
        int i2;
        ArrayList arrayList2;
        int i3;
        this.$r8$classId = 0;
        this.mExtras = new Bundle();
        this.mBuilderCompat = notificationCompat$Builder;
        Context context = notificationCompat$Builder.mContext;
        ArrayList arrayList3 = notificationCompat$Builder.mPeople;
        ArrayList arrayList4 = notificationCompat$Builder.mPersonList;
        String str2 = notificationCompat$Builder.mChannelId;
        ArrayList arrayList5 = notificationCompat$Builder.mInvisibleActions;
        if (Build.VERSION.SDK_INT >= 26) {
            this.mBuilder = NotificationChannelCompat.Api26Impl.createBuilder(context, str2);
        } else {
            this.mBuilder = new Notification.Builder(context);
        }
        Notification notification = notificationCompat$Builder.mNotification;
        Context context2 = null;
        ((Notification.Builder) this.mBuilder).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(notificationCompat$Builder.mContentTitle).setContentText(notificationCompat$Builder.mContentText).setContentInfo(notificationCompat$Builder.mContentInfo).setContentIntent(notificationCompat$Builder.mContentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setNumber(notificationCompat$Builder.mNumber).setProgress(notificationCompat$Builder.mProgressMax, notificationCompat$Builder.mProgress, notificationCompat$Builder.mProgressIndeterminate);
        Notification.Builder builder = (Notification.Builder) this.mBuilder;
        IconCompat iconCompat = notificationCompat$Builder.mLargeIcon;
        builder.setLargeIcon(iconCompat == null ? null : iconCompat.toIcon(context));
        ((Notification.Builder) this.mBuilder).setSubText(notificationCompat$Builder.mSubText).setUsesChronometer(notificationCompat$Builder.mUseChronometer).setPriority(notificationCompat$Builder.mPriority);
        Iterator it = notificationCompat$Builder.mActions.iterator();
        while (it.hasNext()) {
            NotificationCompat$Action notificationCompat$Action = (NotificationCompat$Action) it.next();
            if (notificationCompat$Action.mIcon == null && (i3 = notificationCompat$Action.icon) != 0) {
                notificationCompat$Action.mIcon = IconCompat.createWithResource(i3);
            }
            IconCompat iconCompat2 = notificationCompat$Action.mIcon;
            boolean z = notificationCompat$Action.mAllowGeneratedReplies;
            Bundle bundle = notificationCompat$Action.mExtras;
            Notification.Action.Builder builder2 = new Notification.Action.Builder(iconCompat2 != null ? iconCompat2.toIcon(context2) : context2, notificationCompat$Action.title, notificationCompat$Action.actionIntent);
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            bundle2.putBoolean("android.support.allowGeneratedReplies", z);
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 24) {
                ServiceCompat$Api24Impl.setAllowGeneratedReplies(builder2, z);
            }
            bundle2.putInt("android.support.action.semanticAction", 0);
            if (i4 >= 28) {
                Api28Impl.setSemanticAction(builder2);
            }
            if (i4 >= 29) {
                ServiceCompat$Api29Impl.setContextual(builder2);
            }
            if (i4 >= 31) {
                Api31Impl.setAuthenticationRequired(builder2);
            }
            if (i4 >= 37) {
                Api37Impl.setEmphasisHint(builder2);
                Api37Impl.setStyleHint(builder2);
            }
            bundle2.putBoolean("android.support.action.showsUserInterface", notificationCompat$Action.mShowsUserInterface);
            builder2.addExtras(bundle2);
            ((Notification.Builder) this.mBuilder).addAction(builder2.build());
            context2 = null;
        }
        Bundle bundle3 = notificationCompat$Builder.mExtras;
        if (bundle3 != null) {
            ((Bundle) this.mExtras).putAll(bundle3);
        }
        ((Notification.Builder) this.mBuilder).setShowWhen(notificationCompat$Builder.mShowWhen);
        ((Notification.Builder) this.mBuilder).setLocalOnly(false);
        ((Notification.Builder) this.mBuilder).setGroup(notificationCompat$Builder.mGroupKey);
        ((Notification.Builder) this.mBuilder).setSortKey(null);
        ((Notification.Builder) this.mBuilder).setGroupSummary(notificationCompat$Builder.mGroupSummary);
        this.mGroupAlertBehavior = notificationCompat$Builder.mGroupAlertBehavior;
        ((Notification.Builder) this.mBuilder).setCategory(notificationCompat$Builder.mCategory);
        ((Notification.Builder) this.mBuilder).setColor(notificationCompat$Builder.mColor);
        ((Notification.Builder) this.mBuilder).setVisibility(notificationCompat$Builder.mVisibility);
        ((Notification.Builder) this.mBuilder).setPublicVersion(null);
        ((Notification.Builder) this.mBuilder).setSound(notification.sound, notification.audioAttributes);
        if (Build.VERSION.SDK_INT < 28) {
            if (arrayList4 == null) {
                arrayList2 = null;
            } else {
                arrayList2 = new ArrayList(arrayList4.size());
                Iterator it2 = arrayList4.iterator();
                if (it2.hasNext()) {
                    it2.next().getClass();
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                    throw null;
                }
            }
            if (arrayList2 != null) {
                if (arrayList3 == null) {
                    arrayList3 = arrayList2;
                } else {
                    ArraySet arraySet = new ArraySet(arrayList3.size() + arrayList2.size());
                    arraySet.addAll(arrayList2);
                    arraySet.addAll(arrayList3);
                    arrayList3 = new ArrayList(arraySet);
                }
            }
        }
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                ((Notification.Builder) this.mBuilder).addPerson((String) it3.next());
            }
        }
        if (arrayList5.size() > 0) {
            if (notificationCompat$Builder.mExtras == null) {
                notificationCompat$Builder.mExtras = new Bundle();
            }
            Bundle bundle4 = notificationCompat$Builder.mExtras.getBundle("android.car.EXTENSIONS");
            bundle4 = bundle4 == null ? new Bundle() : bundle4;
            Bundle bundle5 = new Bundle(bundle4);
            Bundle bundle6 = new Bundle();
            int i5 = 0;
            while (i5 < arrayList5.size()) {
                String num = Integer.toString(i5);
                NotificationCompat$Action notificationCompat$Action2 = (NotificationCompat$Action) arrayList5.get(i5);
                Bundle bundle7 = new Bundle();
                if (notificationCompat$Action2.mIcon == null && (i2 = notificationCompat$Action2.icon) != 0) {
                    notificationCompat$Action2.mIcon = IconCompat.createWithResource(i2);
                }
                IconCompat iconCompat3 = notificationCompat$Action2.mIcon;
                ArrayList arrayList6 = arrayList4;
                Bundle bundle8 = notificationCompat$Action2.mExtras;
                String str3 = str2;
                bundle7.putInt("icon", iconCompat3 != null ? iconCompat3.getResId() : 0);
                bundle7.putCharSequence("title", notificationCompat$Action2.title);
                bundle7.putParcelable("actionIntent", notificationCompat$Action2.actionIntent);
                Bundle bundle9 = bundle8 != null ? new Bundle(bundle8) : new Bundle();
                bundle9.putBoolean("android.support.allowGeneratedReplies", notificationCompat$Action2.mAllowGeneratedReplies);
                bundle7.putBundle("extras", bundle9);
                bundle7.putParcelableArray("remoteInputs", null);
                bundle7.putBoolean("showsUserInterface", notificationCompat$Action2.mShowsUserInterface);
                bundle7.putInt("semanticAction", 0);
                bundle6.putBundle(num, bundle7);
                i5++;
                arrayList4 = arrayList6;
                str2 = str3;
            }
            arrayList = arrayList4;
            str = str2;
            bundle4.putBundle("invisible_actions", bundle6);
            bundle5.putBundle("invisible_actions", bundle6);
            if (notificationCompat$Builder.mExtras == null) {
                notificationCompat$Builder.mExtras = new Bundle();
            }
            notificationCompat$Builder.mExtras.putBundle("android.car.EXTENSIONS", bundle4);
            ((Bundle) this.mExtras).putBundle("android.car.EXTENSIONS", bundle5);
        } else {
            arrayList = arrayList4;
            str = str2;
        }
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 24) {
            ((Notification.Builder) this.mBuilder).setExtras(notificationCompat$Builder.mExtras);
            ServiceCompat$Api24Impl.setRemoteInputHistory((Notification.Builder) this.mBuilder);
        }
        if (i6 >= 26) {
            NotificationChannelCompat.Api26Impl.setBadgeIconType((Notification.Builder) this.mBuilder, notificationCompat$Builder.mBadgeIcon);
            NotificationChannelCompat.Api26Impl.setSettingsText((Notification.Builder) this.mBuilder);
            NotificationChannelCompat.Api26Impl.setShortcutId((Notification.Builder) this.mBuilder);
            NotificationChannelCompat.Api26Impl.setTimeoutAfter((Notification.Builder) this.mBuilder);
            NotificationChannelCompat.Api26Impl.setGroupAlertBehavior((Notification.Builder) this.mBuilder, notificationCompat$Builder.mGroupAlertBehavior);
            if (notificationCompat$Builder.mColorizedSet) {
                NotificationChannelCompat.Api26Impl.setColorized((Notification.Builder) this.mBuilder, notificationCompat$Builder.mColorized);
            }
            if (!TextUtils.isEmpty(str)) {
                ((Notification.Builder) this.mBuilder).setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i6 >= 28) {
            Iterator it4 = arrayList.iterator();
            if (it4.hasNext()) {
                it4.next().getClass();
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                throw null;
            }
        }
        if (i6 >= 29) {
            ServiceCompat$Api29Impl.setAllowSystemGeneratedContextualActions((Notification.Builder) this.mBuilder, notificationCompat$Builder.mAllowSystemGeneratedContextualActions);
            ServiceCompat$Api29Impl.setBubbleMetadata((Notification.Builder) this.mBuilder);
        }
        if (i6 >= 31 && (i = notificationCompat$Builder.mFgsDeferBehavior) != 0) {
            Api31Impl.setForegroundServiceBehavior((Notification.Builder) this.mBuilder, i);
        }
        if (i6 >= 36) {
            Api36Impl.setShortCriticalText((Notification.Builder) this.mBuilder);
        }
        if (notificationCompat$Builder.mSilent) {
            if (((NotificationCompat$Builder) this.mBuilderCompat).mGroupSummary) {
                this.mGroupAlertBehavior = 2;
            } else {
                this.mGroupAlertBehavior = 1;
            }
            ((Notification.Builder) this.mBuilder).setVibrate(null);
            ((Notification.Builder) this.mBuilder).setSound(null);
            int i7 = notification.defaults & (-4);
            notification.defaults = i7;
            ((Notification.Builder) this.mBuilder).setDefaults(i7);
            if (i6 >= 26) {
                if (TextUtils.isEmpty(((NotificationCompat$Builder) this.mBuilderCompat).mGroupKey)) {
                    ((Notification.Builder) this.mBuilder).setGroup("silent");
                }
                NotificationChannelCompat.Api26Impl.setGroupAlertBehavior((Notification.Builder) this.mBuilder, this.mGroupAlertBehavior);
            }
        }
    }

    public static void removeSoundAndVibration(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -4;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        SubscriptionEntity subscriptionEntity = (SubscriptionEntity) obj;
        FeedFragment feedFragment = (FeedFragment) this.mBuilder;
        subscriptionEntity.getClass();
        Throwable cause = ((FeedLoadService.RequestException) this.mBuilderCompat).getCause();
        List list = (List) this.mExtras;
        List subList = list.subList(this.mGroupAlertBehavior + 1, list.size());
        FeedFragment.Companion companion = FeedFragment.Companion;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(feedFragment.requireContext());
        boolean z = defaultSharedPreferences.getBoolean(feedFragment.getString(R.string.feed_use_dedicated_fetch_method_key), false);
        AlertDialog.Builder builder = new AlertDialog.Builder(feedFragment.requireContext());
        builder.setTitle(R.string.feed_load_error);
        AlertDialog.Builder negativeButton = builder.setPositiveButton(R.string.unsubscribe, new ErrorActivity$$ExternalSyntheticLambda4(3, feedFragment, subscriptionEntity, subList)).setNegativeButton(R.string.cancel, null);
        String string = feedFragment.getString(R.string.feed_load_error_account_info, subscriptionEntity.name);
        string.getClass();
        if (cause instanceof AccountTerminatedException) {
            string = Owner.CC.m(string, "\n", feedFragment.getString(R.string.feed_load_error_terminated));
        } else if (cause instanceof ContentNotAvailableException) {
            if (z) {
                string = Owner.CC.m(string, "\n", feedFragment.getString(R.string.feed_load_error_fast_unknown));
                negativeButton.setNeutralButton(R.string.feed_use_dedicated_fetch_method_disable_button, new FeedFragment$$ExternalSyntheticLambda9(defaultSharedPreferences, feedFragment));
            } else {
                ContentNotAvailableException contentNotAvailableException = (ContentNotAvailableException) cause;
                if (!Utils.isNullOrEmpty(contentNotAvailableException.getMessage())) {
                    string = Owner.CC.m(string, "\n", contentNotAvailableException.getMessage());
                }
            }
        }
        negativeButton.P.mMessage = string;
        negativeButton.show();
    }

    public void ensureTotalCapacity(int i, int i2) {
        int i3 = i2 + i;
        char[] cArr = (char[]) this.mExtras;
        if (cArr.length <= i3) {
            int i4 = i * 2;
            if (i3 < i4) {
                i3 = i4;
            }
            this.mExtras = Arrays.copyOf(cArr, i3);
        }
    }

    public void flush() {
        ((OutputStream) this.mBuilder).write((byte[]) this.mBuilderCompat, 0, this.mGroupAlertBehavior);
        this.mGroupAlertBehavior = 0;
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder("$");
        int i = this.mGroupAlertBehavior + 1;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = ((Object[]) this.mBuilderCompat)[i2];
            if (obj instanceof SerialDescriptor) {
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
                boolean areEqual = Intrinsics.areEqual(serialDescriptor.getKind(), StructureKind$MAP.INSTANCE$2);
                int[] iArr = (int[]) this.mExtras;
                if (!areEqual) {
                    int i3 = iArr[i2];
                    if (i3 >= 0) {
                        sb.append(".");
                        sb.append(serialDescriptor.getElementName(i3));
                    }
                } else if (iArr[i2] != -1) {
                    sb.append("[");
                    sb.append(((int[]) this.mExtras)[i2]);
                    sb.append("]");
                }
            } else if (obj == JsonPath$Tombstone.INSTANCE$1) {
                sb.append("[<debug info disabled>]");
            } else if (obj != JsonPath$Tombstone.INSTANCE) {
                sb.append("['");
                sb.append(obj);
                sb.append("']");
            }
        }
        return sb.toString();
    }

    public void resize() {
        int i = this.mGroupAlertBehavior * 2;
        this.mBuilderCompat = Arrays.copyOf((Object[]) this.mBuilderCompat, i);
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = -1;
        }
        ArraysKt.copyInto$default(0, 0, 14, (int[]) this.mExtras, iArr);
        this.mExtras = iArr;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 1:
                return getPath();
            default:
                return super.toString();
        }
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void write(String str) {
        str.getClass();
        int length = str.length();
        ensureTotalCapacity(0, length);
        str.getChars(0, length, (char[]) this.mExtras, 0);
        writeUtf8((char[]) this.mExtras, length);
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeChar(char c) {
        byte[] bArr = (byte[]) this.mBuilderCompat;
        if (c < 128) {
            if (bArr.length - this.mGroupAlertBehavior < 1) {
                flush();
            }
            int i = this.mGroupAlertBehavior;
            this.mGroupAlertBehavior = i + 1;
            bArr[i] = (byte) c;
            return;
        }
        if (c < 2048) {
            if (bArr.length - this.mGroupAlertBehavior < 2) {
                flush();
            }
            int i2 = (c >> 6) | PsExtractor.AUDIO_STREAM;
            int i3 = this.mGroupAlertBehavior;
            int i4 = i3 + 1;
            this.mGroupAlertBehavior = i4;
            bArr[i3] = (byte) i2;
            this.mGroupAlertBehavior = i3 + 2;
            bArr[i4] = (byte) ((c & '?') | 128);
            return;
        }
        if (55296 <= c && c < 57344) {
            if (bArr.length - this.mGroupAlertBehavior < 1) {
                flush();
            }
            int i5 = this.mGroupAlertBehavior;
            this.mGroupAlertBehavior = i5 + 1;
            bArr[i5] = 63;
            return;
        }
        if (c < 0) {
            if (bArr.length - this.mGroupAlertBehavior < 3) {
                flush();
            }
            int i6 = this.mGroupAlertBehavior;
            int i7 = i6 + 1;
            this.mGroupAlertBehavior = i7;
            bArr[i6] = (byte) ((c >> '\f') | 224);
            int i8 = i6 + 2;
            this.mGroupAlertBehavior = i8;
            bArr[i7] = (byte) (((c >> 6) & 63) | 128);
            this.mGroupAlertBehavior = i6 + 3;
            bArr[i8] = (byte) ((c & '?') | 128);
            return;
        }
        if (c > 65535) {
            throw new JsonEncodingException(Modifier.CC.m("Unexpected code point: ", (int) c, ". Check your strings for malformed UTF-8 sequences."), (String) null, 6);
        }
        if (bArr.length - this.mGroupAlertBehavior < 4) {
            flush();
        }
        int i9 = (c >> 18) | PsExtractor.VIDEO_STREAM_MASK;
        int i10 = this.mGroupAlertBehavior;
        int i11 = i10 + 1;
        this.mGroupAlertBehavior = i11;
        bArr[i10] = (byte) i9;
        int i12 = i10 + 2;
        this.mGroupAlertBehavior = i12;
        bArr[i11] = (byte) (((c >> '\f') & 63) | 128);
        int i13 = i10 + 3;
        this.mGroupAlertBehavior = i13;
        bArr[i12] = (byte) (((c >> 6) & 63) | 128);
        this.mGroupAlertBehavior = i10 + 4;
        bArr[i13] = (byte) ((c & '?') | 128);
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeLong(long j) {
        write(String.valueOf(j));
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeQuoted(String str) {
        int i;
        str.getClass();
        ensureTotalCapacity(0, str.length() + 2);
        char[] cArr = (char[]) this.mExtras;
        cArr[0] = '\"';
        int length = str.length();
        str.getChars(0, length, cArr, 1);
        int i2 = length + 1;
        int i3 = 1;
        while (i3 < i2) {
            char c = cArr[i3];
            byte[] bArr = StringOpsKt.ESCAPE_MARKERS;
            if (c < bArr.length && bArr[c] != 0) {
                int length2 = str.length();
                for (int i4 = i3 - 1; i4 < length2; i4++) {
                    ensureTotalCapacity(i3, 2);
                    char charAt = str.charAt(i4);
                    byte[] bArr2 = StringOpsKt.ESCAPE_MARKERS;
                    if (charAt < bArr2.length) {
                        byte b = bArr2[charAt];
                        if (b == 0) {
                            i = i3 + 1;
                            ((char[]) this.mExtras)[i3] = charAt;
                        } else {
                            if (b == 1) {
                                String str2 = StringOpsKt.ESCAPE_STRINGS[charAt];
                                str2.getClass();
                                ensureTotalCapacity(i3, str2.length());
                                str2.getChars(0, str2.length(), (char[]) this.mExtras, i3);
                                i3 = str2.length() + i3;
                            } else {
                                char[] cArr2 = (char[]) this.mExtras;
                                cArr2[i3] = '\\';
                                cArr2[i3 + 1] = (char) b;
                                i3 += 2;
                            }
                        }
                    } else {
                        i = i3 + 1;
                        ((char[]) this.mExtras)[i3] = charAt;
                    }
                    i3 = i;
                }
                ensureTotalCapacity(i3, 1);
                char[] cArr3 = (char[]) this.mExtras;
                cArr3[i3] = '\"';
                writeUtf8(cArr3, i3 + 1);
                flush();
                return;
            }
            i3++;
        }
        cArr[i2] = '\"';
        writeUtf8(cArr, length + 2);
        flush();
    }

    public void writeUtf8(char[] cArr, int i) {
        byte[] bArr = (byte[]) this.mBuilderCompat;
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("count < 0");
            return;
        }
        if (i > cArr.length) {
            StringBuilder m179m = Modifier.CC.m179m("count > string.length: ", i, " > ");
            m179m.append(cArr.length);
            throw new IllegalArgumentException(m179m.toString().toString());
        }
        int i2 = 0;
        while (i2 < i) {
            char c = cArr[i2];
            if (c < 128) {
                if (bArr.length - this.mGroupAlertBehavior < 1) {
                    flush();
                }
                int i3 = this.mGroupAlertBehavior;
                int i4 = i3 + 1;
                this.mGroupAlertBehavior = i4;
                bArr[i3] = (byte) c;
                i2++;
                int min = Math.min(i, (bArr.length - i4) + i2);
                while (i2 < min) {
                    char c2 = cArr[i2];
                    if (c2 < 128) {
                        int i5 = this.mGroupAlertBehavior;
                        this.mGroupAlertBehavior = i5 + 1;
                        bArr[i5] = (byte) c2;
                        i2++;
                    }
                }
            } else {
                if (c < 2048) {
                    if (bArr.length - this.mGroupAlertBehavior < 2) {
                        flush();
                    }
                    int i6 = (c >> 6) | PsExtractor.AUDIO_STREAM;
                    int i7 = this.mGroupAlertBehavior;
                    int i8 = i7 + 1;
                    this.mGroupAlertBehavior = i8;
                    bArr[i7] = (byte) i6;
                    this.mGroupAlertBehavior = i7 + 2;
                    bArr[i8] = (byte) ((c & '?') | 128);
                } else if (c < 55296 || c > 57343) {
                    if (bArr.length - this.mGroupAlertBehavior < 3) {
                        flush();
                    }
                    int i9 = this.mGroupAlertBehavior;
                    int i10 = i9 + 1;
                    this.mGroupAlertBehavior = i10;
                    bArr[i9] = (byte) ((c >> '\f') | 224);
                    int i11 = i9 + 2;
                    this.mGroupAlertBehavior = i11;
                    bArr[i10] = (byte) (((c >> 6) & 63) | 128);
                    this.mGroupAlertBehavior = i9 + 3;
                    bArr[i11] = (byte) ((c & '?') | 128);
                } else {
                    int i12 = i2 + 1;
                    char c3 = i12 < i ? cArr[i12] : (char) 0;
                    if (c > 56319 || 56320 > c3 || c3 >= 57344) {
                        if (bArr.length - this.mGroupAlertBehavior < 1) {
                            flush();
                        }
                        int i13 = this.mGroupAlertBehavior;
                        this.mGroupAlertBehavior = i13 + 1;
                        bArr[i13] = 63;
                        i2 = i12;
                    } else {
                        int i14 = (((c & 1023) << 10) | (c3 & 1023)) + 65536;
                        if (bArr.length - this.mGroupAlertBehavior < 4) {
                            flush();
                        }
                        int i15 = (i14 >> 18) | PsExtractor.VIDEO_STREAM_MASK;
                        int i16 = this.mGroupAlertBehavior;
                        int i17 = i16 + 1;
                        this.mGroupAlertBehavior = i17;
                        bArr[i16] = (byte) i15;
                        int i18 = i16 + 2;
                        this.mGroupAlertBehavior = i18;
                        bArr[i17] = (byte) (((i14 >> 12) & 63) | 128);
                        int i19 = i16 + 3;
                        this.mGroupAlertBehavior = i19;
                        bArr[i18] = (byte) (((i14 >> 6) & 63) | 128);
                        this.mGroupAlertBehavior = i16 + 4;
                        bArr[i19] = (byte) ((i14 & 63) | 128);
                        i2 += 2;
                    }
                }
                i2++;
            }
        }
    }

    public NotificationCompatBuilder(FeedFragment feedFragment, FeedLoadService.RequestException requestException, List list, int i) {
        this.$r8$classId = 3;
        this.mBuilder = feedFragment;
        this.mBuilderCompat = requestException;
        this.mExtras = list;
        this.mGroupAlertBehavior = i;
    }

    public NotificationCompatBuilder(OutputStream outputStream) {
        this.$r8$classId = 2;
        this.mBuilder = outputStream;
        this.mBuilderCompat = ByteArrayPool.INSTANCE.take(512);
        this.mExtras = CharArrayPool.INSTANCE.m697take(128);
    }

    public NotificationCompatBuilder(JsonConfiguration jsonConfiguration) {
        this.$r8$classId = 1;
        this.mBuilder = jsonConfiguration;
        this.mBuilderCompat = new Object[8];
        int[] iArr = new int[8];
        for (int i = 0; i < 8; i++) {
            iArr[i] = -1;
        }
        this.mExtras = iArr;
        this.mGroupAlertBehavior = -1;
    }
}
