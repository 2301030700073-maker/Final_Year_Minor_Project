package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.Person;
import androidx.core.graphics.drawable.IconCompat;
import coil3.util.UtilsKt;
import okhttp3.Dispatcher;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationCompat$CallStyle extends NotificationCompat$Style {
    public Integer mAnswerButtonColor;
    public PendingIntent mAnswerIntent;
    public int mCallType;
    public Integer mDeclineButtonColor;
    public PendingIntent mDeclineIntent;
    public PendingIntent mHangUpIntent;
    public boolean mIsVideo;
    public Person mPerson;
    public IconCompat mVerificationIcon;
    public CharSequence mVerificationText;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Api28Impl {
        public static Notification.Builder addPerson(Notification.Builder builder, android.app.Person person) {
            return builder.addPerson(person);
        }

        public static Parcelable castToParcelable(android.app.Person person) {
            return person;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Api31Impl {
        public static Notification.CallStyle forIncomingCall(android.app.Person person, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
            return Notification.CallStyle.forIncomingCall(person, pendingIntent, pendingIntent2);
        }

        public static Notification.CallStyle forOngoingCall(android.app.Person person, PendingIntent pendingIntent) {
            return Notification.CallStyle.forOngoingCall(person, pendingIntent);
        }

        public static Notification.CallStyle forScreeningCall(android.app.Person person, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
            return Notification.CallStyle.forScreeningCall(person, pendingIntent, pendingIntent2);
        }

        public static Notification.CallStyle setAnswerButtonColorHint(Notification.CallStyle callStyle, int i) {
            return callStyle.setAnswerButtonColorHint(i);
        }

        public static Notification.CallStyle setDeclineButtonColorHint(Notification.CallStyle callStyle, int i) {
            return callStyle.setDeclineButtonColorHint(i);
        }

        public static Notification.CallStyle setIsVideo(Notification.CallStyle callStyle, boolean z) {
            return callStyle.setIsVideo(z);
        }

        public static Notification.CallStyle setVerificationIcon(Notification.CallStyle callStyle, Icon icon) {
            return callStyle.setVerificationIcon(icon);
        }

        public static Notification.CallStyle setVerificationText(Notification.CallStyle callStyle, CharSequence charSequence) {
            return callStyle.setVerificationText(charSequence);
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void addCompatExtras(Bundle bundle) {
        super.addCompatExtras(bundle);
        bundle.putInt("android.callType", this.mCallType);
        bundle.putBoolean("android.callIsVideo", this.mIsVideo);
        Person person = this.mPerson;
        if (person != null) {
            if (Build.VERSION.SDK_INT >= 28) {
                bundle.putParcelable("android.callPerson", Api28Impl.castToParcelable(Person.Api28Impl.toAndroidPerson(person)));
            } else {
                bundle.putParcelable("android.callPersonCompat", person.toBundle());
            }
        }
        IconCompat iconCompat = this.mVerificationIcon;
        if (iconCompat != null) {
            bundle.putParcelable("android.verificationIcon", UtilsKt.toIcon(iconCompat, this.mBuilder.mContext));
        }
        bundle.putCharSequence("android.verificationText", this.mVerificationText);
        bundle.putParcelable("android.answerIntent", this.mAnswerIntent);
        bundle.putParcelable("android.declineIntent", this.mDeclineIntent);
        bundle.putParcelable("android.hangUpIntent", this.mHangUpIntent);
        Integer num = this.mAnswerButtonColor;
        if (num != null) {
            bundle.putInt("android.answerColor", num.intValue());
        }
        Integer num2 = this.mDeclineButtonColor;
        if (num2 != null) {
            bundle.putInt("android.declineColor", num2.intValue());
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void apply(Dispatcher dispatcher) {
        Notification.Builder builder = (Notification.Builder) dispatcher.readyAsyncCalls;
        int i = Build.VERSION.SDK_INT;
        String str = null;
        r5 = null;
        Notification.CallStyle forIncomingCall = null;
        if (i < 31) {
            Person person = this.mPerson;
            builder.setContentTitle(person != null ? person.mName : null);
            Bundle bundle = this.mBuilder.mExtras;
            CharSequence charSequence = (bundle == null || !bundle.containsKey("android.text")) ? null : this.mBuilder.mExtras.getCharSequence("android.text");
            if (charSequence == null) {
                int i2 = this.mCallType;
                if (i2 == 1) {
                    str = this.mBuilder.mContext.getResources().getString(R.string.call_notification_incoming_text);
                } else if (i2 == 2) {
                    str = this.mBuilder.mContext.getResources().getString(R.string.call_notification_ongoing_text);
                } else if (i2 == 3) {
                    str = this.mBuilder.mContext.getResources().getString(R.string.call_notification_screening_text);
                }
                charSequence = str;
            }
            builder.setContentText(charSequence);
            Person person2 = this.mPerson;
            if (person2 != null) {
                IconCompat iconCompat = person2.mIcon;
                if (iconCompat != null) {
                    builder.setLargeIcon(UtilsKt.toIcon(iconCompat, this.mBuilder.mContext));
                }
                Person person3 = this.mPerson;
                if (i >= 28) {
                    person3.getClass();
                    Api28Impl.addPerson(builder, Person.Api28Impl.toAndroidPerson(person3));
                } else {
                    builder.addPerson(person3.mUri);
                }
            }
            builder.setCategory("call");
            return;
        }
        int i3 = this.mCallType;
        if (i3 == 1) {
            Person person4 = this.mPerson;
            person4.getClass();
            forIncomingCall = Api31Impl.forIncomingCall(Person.Api28Impl.toAndroidPerson(person4), this.mDeclineIntent, this.mAnswerIntent);
        } else if (i3 == 2) {
            Person person5 = this.mPerson;
            person5.getClass();
            forIncomingCall = Api31Impl.forOngoingCall(Person.Api28Impl.toAndroidPerson(person5), this.mHangUpIntent);
        } else if (i3 == 3) {
            Person person6 = this.mPerson;
            person6.getClass();
            forIncomingCall = Api31Impl.forScreeningCall(Person.Api28Impl.toAndroidPerson(person6), this.mHangUpIntent, this.mAnswerIntent);
        } else if (Log.isLoggable("NotifCompat", 3)) {
            Log.d("NotifCompat", "Unrecognized call type in CallStyle: " + String.valueOf(this.mCallType));
        }
        if (forIncomingCall != null) {
            forIncomingCall.setBuilder(builder);
            Integer num = this.mAnswerButtonColor;
            if (num != null) {
                Api31Impl.setAnswerButtonColorHint(forIncomingCall, num.intValue());
            }
            Integer num2 = this.mDeclineButtonColor;
            if (num2 != null) {
                Api31Impl.setDeclineButtonColorHint(forIncomingCall, num2.intValue());
            }
            Api31Impl.setVerificationText(forIncomingCall, this.mVerificationText);
            IconCompat iconCompat2 = this.mVerificationIcon;
            if (iconCompat2 != null) {
                Api31Impl.setVerificationIcon(forIncomingCall, UtilsKt.toIcon(iconCompat2, this.mBuilder.mContext));
            }
            Api31Impl.setIsVideo(forIncomingCall, this.mIsVideo);
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String getClassName() {
        return "androidx.core.app.NotificationCompat$CallStyle";
    }

    public final NotificationCompat$Action makeAction(int i, int i2, Integer num, int i3, PendingIntent pendingIntent) {
        if (num == null) {
            num = Integer.valueOf(this.mBuilder.mContext.getColor(i3));
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) this.mBuilder.mContext.getResources().getString(i2));
        spannableStringBuilder.setSpan(new ForegroundColorSpan(num.intValue()), 0, spannableStringBuilder.length(), 18);
        NotificationCompat$Action build = new NotificationCompat$Action.Builder(IconCompat.createWithResource(this.mBuilder.mContext, i), spannableStringBuilder, pendingIntent).build();
        build.mExtras.putBoolean("key_action_priority", true);
        return build;
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void restoreFromCompatExtras(Bundle bundle) {
        super.restoreFromCompatExtras(bundle);
        this.mCallType = bundle.getInt("android.callType");
        this.mIsVideo = bundle.getBoolean("android.callIsVideo");
        if (Build.VERSION.SDK_INT >= 28 && bundle.containsKey("android.callPerson")) {
            this.mPerson = Person.Api28Impl.fromAndroidPerson(VisualTransformation$Companion$$ExternalSyntheticLambda0.m((Object) bundle.getParcelable("android.callPerson")));
        } else if (bundle.containsKey("android.callPersonCompat")) {
            this.mPerson = Person.fromBundle(bundle.getBundle("android.callPersonCompat"));
        }
        if (bundle.containsKey("android.verificationIcon")) {
            Icon icon = (Icon) bundle.getParcelable("android.verificationIcon");
            PorterDuff.Mode mode = IconCompat.DEFAULT_TINT_MODE;
            this.mVerificationIcon = UtilsKt.createFromIconInner(icon);
        } else if (bundle.containsKey("android.verificationIconCompat")) {
            this.mVerificationIcon = IconCompat.createFromBundle(bundle.getBundle("android.verificationIconCompat"));
        }
        this.mVerificationText = bundle.getCharSequence("android.verificationText");
        this.mAnswerIntent = (PendingIntent) bundle.getParcelable("android.answerIntent");
        this.mDeclineIntent = (PendingIntent) bundle.getParcelable("android.declineIntent");
        this.mHangUpIntent = (PendingIntent) bundle.getParcelable("android.hangUpIntent");
        this.mAnswerButtonColor = bundle.containsKey("android.answerColor") ? Integer.valueOf(bundle.getInt("android.answerColor")) : null;
        this.mDeclineButtonColor = bundle.containsKey("android.declineColor") ? Integer.valueOf(bundle.getInt("android.declineColor")) : null;
    }
}
