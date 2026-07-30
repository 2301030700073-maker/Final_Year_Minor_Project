package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.app.RemoteInput;
import android.content.Context;
import android.content.LocusId;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import defpackage.Lw;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: iv, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2953iv {

    /* renamed from: do, reason: not valid java name */
    public final Notification.Builder f13590do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f13591do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f13592do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2778fv f13593do;

    /* renamed from: iv$case, reason: invalid class name */
    public static class Ccase {
        /* renamed from: do, reason: not valid java name */
        public static Notification.Builder m6944do(Notification.Builder builder, Person person) {
            Notification.Builder addPerson;
            addPerson = builder.addPerson(person);
            return addPerson;
        }

        /* renamed from: if, reason: not valid java name */
        public static Notification.Action.Builder m6945if(Notification.Action.Builder builder, int i) {
            Notification.Action.Builder semanticAction;
            semanticAction = builder.setSemanticAction(i);
            return semanticAction;
        }
    }

    /* renamed from: iv$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: break, reason: not valid java name */
        public static Notification.Builder m6946break(Notification.Builder builder, String str) {
            return builder.setSortKey(str);
        }

        /* renamed from: case, reason: not valid java name */
        public static String m6947case(Notification notification) {
            return notification.getGroup();
        }

        /* renamed from: do, reason: not valid java name */
        public static Notification.Builder m6948do(Notification.Builder builder, Notification.Action action) {
            return builder.addAction(action);
        }

        /* renamed from: else, reason: not valid java name */
        public static Notification.Builder m6949else(Notification.Builder builder, String str) {
            return builder.setGroup(str);
        }

        /* renamed from: for, reason: not valid java name */
        public static Notification.Action.Builder m6950for(Notification.Action.Builder builder, RemoteInput remoteInput) {
            return builder.addRemoteInput(remoteInput);
        }

        /* renamed from: goto, reason: not valid java name */
        public static Notification.Builder m6951goto(Notification.Builder builder, boolean z) {
            return builder.setGroupSummary(z);
        }

        /* renamed from: if, reason: not valid java name */
        public static Notification.Action.Builder m6952if(Notification.Action.Builder builder, Bundle bundle) {
            return builder.addExtras(bundle);
        }

        /* renamed from: new, reason: not valid java name */
        public static Notification.Action m6953new(Notification.Action.Builder builder) {
            return builder.build();
        }

        /* renamed from: this, reason: not valid java name */
        public static Notification.Builder m6954this(Notification.Builder builder, boolean z) {
            return builder.setLocalOnly(z);
        }

        /* renamed from: try, reason: not valid java name */
        public static Notification.Action.Builder m6955try(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            return new Notification.Action.Builder(i, charSequence, pendingIntent);
        }
    }

    /* renamed from: iv$else, reason: invalid class name */
    public static class Celse {
        /* renamed from: do, reason: not valid java name */
        public static Notification.Builder m6956do(Notification.Builder builder, boolean z) {
            Notification.Builder allowSystemGeneratedContextualActions;
            allowSystemGeneratedContextualActions = builder.setAllowSystemGeneratedContextualActions(z);
            return allowSystemGeneratedContextualActions;
        }

        /* renamed from: for, reason: not valid java name */
        public static Notification.Action.Builder m6957for(Notification.Action.Builder builder, boolean z) {
            Notification.Action.Builder contextual;
            contextual = builder.setContextual(z);
            return contextual;
        }

        /* renamed from: if, reason: not valid java name */
        public static Notification.Builder m6958if(Notification.Builder builder, Notification.BubbleMetadata bubbleMetadata) {
            Notification.Builder bubbleMetadata2;
            bubbleMetadata2 = builder.setBubbleMetadata(bubbleMetadata);
            return bubbleMetadata2;
        }

        /* renamed from: new, reason: not valid java name */
        public static Notification.Builder m6959new(Notification.Builder builder, Object obj) {
            Notification.Builder locusId;
            locusId = builder.setLocusId((LocusId) obj);
            return locusId;
        }
    }

    /* renamed from: iv$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: do, reason: not valid java name */
        public static Notification.Action.Builder m6960do(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
            return new Notification.Action.Builder(icon, charSequence, pendingIntent);
        }

        /* renamed from: for, reason: not valid java name */
        public static Notification.Builder m6961for(Notification.Builder builder, Object obj) {
            Notification.Builder smallIcon;
            smallIcon = builder.setSmallIcon((Icon) obj);
            return smallIcon;
        }

        /* renamed from: if, reason: not valid java name */
        public static Notification.Builder m6962if(Notification.Builder builder, Icon icon) {
            Notification.Builder largeIcon;
            largeIcon = builder.setLargeIcon(icon);
            return largeIcon;
        }
    }

    /* renamed from: iv$goto, reason: invalid class name */
    public static class Cgoto {
        /* renamed from: do, reason: not valid java name */
        public static Notification.Action.Builder m6963do(Notification.Action.Builder builder, boolean z) {
            Notification.Action.Builder authenticationRequired;
            authenticationRequired = builder.setAuthenticationRequired(z);
            return authenticationRequired;
        }

        /* renamed from: if, reason: not valid java name */
        public static Notification.Builder m6964if(Notification.Builder builder, int i) {
            Notification.Builder foregroundServiceBehavior;
            foregroundServiceBehavior = builder.setForegroundServiceBehavior(i);
            return foregroundServiceBehavior;
        }
    }

    /* renamed from: iv$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: case, reason: not valid java name */
        public static Notification.Builder m6965case(Notification.Builder builder, int i) {
            return builder.setVisibility(i);
        }

        /* renamed from: do, reason: not valid java name */
        public static Notification.Builder m6966do(Notification.Builder builder, String str) {
            return builder.addPerson(str);
        }

        /* renamed from: for, reason: not valid java name */
        public static Notification.Builder m6967for(Notification.Builder builder, int i) {
            return builder.setColor(i);
        }

        /* renamed from: if, reason: not valid java name */
        public static Notification.Builder m6968if(Notification.Builder builder, String str) {
            return builder.setCategory(str);
        }

        /* renamed from: new, reason: not valid java name */
        public static Notification.Builder m6969new(Notification.Builder builder, Notification notification) {
            return builder.setPublicVersion(notification);
        }

        /* renamed from: try, reason: not valid java name */
        public static Notification.Builder m6970try(Notification.Builder builder, Uri uri, Object obj) {
            return builder.setSound(uri, (AudioAttributes) obj);
        }
    }

    /* renamed from: iv$new, reason: invalid class name */
    public static class Cnew {
        /* renamed from: do, reason: not valid java name */
        public static Notification.Action.Builder m6971do(Notification.Action.Builder builder, boolean z) {
            Notification.Action.Builder allowGeneratedReplies;
            allowGeneratedReplies = builder.setAllowGeneratedReplies(z);
            return allowGeneratedReplies;
        }

        /* renamed from: for, reason: not valid java name */
        public static Notification.Builder m6972for(Notification.Builder builder, RemoteViews remoteViews) {
            Notification.Builder customContentView;
            customContentView = builder.setCustomContentView(remoteViews);
            return customContentView;
        }

        /* renamed from: if, reason: not valid java name */
        public static Notification.Builder m6973if(Notification.Builder builder, RemoteViews remoteViews) {
            Notification.Builder customBigContentView;
            customBigContentView = builder.setCustomBigContentView(remoteViews);
            return customBigContentView;
        }

        /* renamed from: new, reason: not valid java name */
        public static Notification.Builder m6974new(Notification.Builder builder, RemoteViews remoteViews) {
            Notification.Builder customHeadsUpContentView;
            customHeadsUpContentView = builder.setCustomHeadsUpContentView(remoteViews);
            return customHeadsUpContentView;
        }

        /* renamed from: try, reason: not valid java name */
        public static Notification.Builder m6975try(Notification.Builder builder, CharSequence[] charSequenceArr) {
            Notification.Builder remoteInputHistory;
            remoteInputHistory = builder.setRemoteInputHistory(charSequenceArr);
            return remoteInputHistory;
        }
    }

    /* renamed from: iv$try, reason: invalid class name */
    public static class Ctry {
        /* renamed from: case, reason: not valid java name */
        public static Notification.Builder m6976case(Notification.Builder builder, String str) {
            Notification.Builder shortcutId;
            shortcutId = builder.setShortcutId(str);
            return shortcutId;
        }

        /* renamed from: do, reason: not valid java name */
        public static Notification.Builder m6977do(Context context, String str) {
            return new Notification.Builder(context, str);
        }

        /* renamed from: else, reason: not valid java name */
        public static Notification.Builder m6978else(Notification.Builder builder, long j) {
            Notification.Builder timeoutAfter;
            timeoutAfter = builder.setTimeoutAfter(j);
            return timeoutAfter;
        }

        /* renamed from: for, reason: not valid java name */
        public static Notification.Builder m6979for(Notification.Builder builder, boolean z) {
            Notification.Builder colorized;
            colorized = builder.setColorized(z);
            return colorized;
        }

        /* renamed from: if, reason: not valid java name */
        public static Notification.Builder m6980if(Notification.Builder builder, int i) {
            Notification.Builder badgeIconType;
            badgeIconType = builder.setBadgeIconType(i);
            return badgeIconType;
        }

        /* renamed from: new, reason: not valid java name */
        public static Notification.Builder m6981new(Notification.Builder builder, int i) {
            Notification.Builder groupAlertBehavior;
            groupAlertBehavior = builder.setGroupAlertBehavior(i);
            return groupAlertBehavior;
        }

        /* renamed from: try, reason: not valid java name */
        public static Notification.Builder m6982try(Notification.Builder builder, CharSequence charSequence) {
            Notification.Builder settingsText;
            settingsText = builder.setSettingsText(charSequence);
            return settingsText;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8, types: [android.net.Uri, java.lang.CharSequence, java.lang.String, long[]] */
    public C2953iv(C2778fv c2778fv) {
        ArrayList<Lw> arrayList;
        ?? r4;
        ArrayList<C2602cv> arrayList2;
        String str;
        ArrayList<Lw> arrayList3;
        Bundle[] bundleArr;
        int i;
        ArrayList<String> arrayList4;
        C2953iv c2953iv = this;
        new ArrayList();
        c2953iv.f13592do = new Bundle();
        c2953iv.f13593do = c2778fv;
        Context context = c2778fv.f13001do;
        c2953iv.f13591do = context;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            c2953iv.f13590do = Ctry.m6977do(context, c2778fv.f13014if);
        } else {
            c2953iv.f13590do = new Notification.Builder(c2778fv.f13001do);
        }
        Notification notification = c2778fv.f12999do;
        Resources resources = null;
        int i3 = 2;
        c2953iv.f13590do.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(c2778fv.f13005do).setContentText(c2778fv.f13013if).setContentInfo(null).setContentIntent(c2778fv.f13000do).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setNumber(c2778fv.f12998do).setProgress(0, 0, false);
        if (i2 < 23) {
            Notification.Builder builder = c2953iv.f13590do;
            IconCompat iconCompat = c2778fv.f13003do;
            builder.setLargeIcon(iconCompat == null ? null : iconCompat.m3723for());
        } else {
            Notification.Builder builder2 = c2953iv.f13590do;
            IconCompat iconCompat2 = c2778fv.f13003do;
            Cfor.m6962if(builder2, iconCompat2 == null ? null : iconCompat2.m3722else(context));
        }
        c2953iv.f13590do.setSubText(null).setUsesChronometer(false).setPriority(c2778fv.f13012if);
        AbstractC2896hv abstractC2896hv = c2778fv.f13004do;
        if (abstractC2896hv instanceof C2837gv) {
            C2837gv c2837gv = (C2837gv) abstractC2896hv;
            Integer valueOf = Integer.valueOf(C0466Ra.getColor(((AbstractC2896hv) c2837gv).f13404do.f13001do, R.color.call_notification_decline_color));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) ((AbstractC2896hv) c2837gv).f13404do.f13001do.getResources().getString(R.string.call_notification_hang_up_action));
            spannableStringBuilder.setSpan(new ForegroundColorSpan(valueOf.intValue()), 0, spannableStringBuilder.length(), 18);
            Context context2 = ((AbstractC2896hv) c2837gv).f13404do.f13001do;
            PorterDuff.Mode mode = IconCompat.f6520if;
            context2.getClass();
            IconCompat m3720if = IconCompat.m3720if(context2.getResources(), context2.getPackageName(), R.drawable.ic_call_decline);
            Bundle bundle = new Bundle();
            CharSequence m6684if = C2778fv.m6684if(spannableStringBuilder);
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            C2602cv c2602cv = new C2602cv(m3720if, m6684if, null, bundle, arrayList6.isEmpty() ? null : (C3598qz[]) arrayList6.toArray(new C3598qz[arrayList6.size()]), arrayList5.isEmpty() ? null : (C3598qz[]) arrayList5.toArray(new C3598qz[arrayList5.size()]), true, 0, true, false, false);
            c2602cv.f12396do.putBoolean("key_action_priority", true);
            ArrayList arrayList7 = new ArrayList(3);
            arrayList7.add(c2602cv);
            ArrayList<C2602cv> arrayList8 = ((AbstractC2896hv) c2837gv).f13404do.f13007do;
            if (arrayList8 != null) {
                Iterator<C2602cv> it = arrayList8.iterator();
                while (it.hasNext()) {
                    C2602cv next = it.next();
                    if (next.f12401for) {
                        arrayList7.add(next);
                    } else if (!next.f12396do.getBoolean("key_action_priority") && i3 > 1) {
                        arrayList7.add(next);
                        i3--;
                    }
                }
            }
            Iterator it2 = arrayList7.iterator();
            while (it2.hasNext()) {
                c2953iv.m6943do((C2602cv) it2.next());
            }
        } else {
            Iterator<C2602cv> it3 = c2778fv.f13007do.iterator();
            while (it3.hasNext()) {
                c2953iv.m6943do(it3.next());
            }
        }
        Bundle bundle2 = c2778fv.f13002do;
        if (bundle2 != null) {
            c2953iv.f13592do.putAll(bundle2);
        }
        int i4 = Build.VERSION.SDK_INT;
        c2953iv.f13590do.setShowWhen(c2778fv.f13008do);
        Cdo.m6954this(c2953iv.f13590do, c2778fv.f13016if);
        Cdo.m6949else(c2953iv.f13590do, null);
        Cdo.m6946break(c2953iv.f13590do, null);
        Cdo.m6951goto(c2953iv.f13590do, false);
        Cif.m6968if(c2953iv.f13590do, c2778fv.f13006do);
        Cif.m6967for(c2953iv.f13590do, c2778fv.f13009for);
        Cif.m6965case(c2953iv.f13590do, c2778fv.f13017new);
        Cif.m6969new(c2953iv.f13590do, null);
        Cif.m6970try(c2953iv.f13590do, notification.sound, notification.audioAttributes);
        ArrayList<Lw> arrayList9 = c2778fv.f13015if;
        ArrayList<String> arrayList10 = c2778fv.f13018new;
        String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (i4 < 28) {
            if (arrayList9 == null) {
                arrayList4 = null;
            } else {
                arrayList4 = new ArrayList<>(arrayList9.size());
                Iterator<Lw> it4 = arrayList9.iterator();
                while (it4.hasNext()) {
                    Lw next2 = it4.next();
                    String str3 = next2.f2040do;
                    if (str3 == null) {
                        CharSequence charSequence = next2.f2039do;
                        if (charSequence != null) {
                            str3 = "name:" + ((Object) charSequence);
                        } else {
                            str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        }
                    }
                    arrayList4.add(str3);
                }
            }
            if (arrayList4 != null) {
                if (arrayList10 != null) {
                    I2 i22 = new I2(arrayList10.size() + arrayList4.size());
                    i22.addAll(arrayList4);
                    i22.addAll(arrayList10);
                    arrayList4 = new ArrayList<>(i22);
                }
                arrayList10 = arrayList4;
            }
        }
        if (arrayList10 != null && !arrayList10.isEmpty()) {
            Iterator<String> it5 = arrayList10.iterator();
            while (it5.hasNext()) {
                Cif.m6966do(c2953iv.f13590do, it5.next());
            }
        }
        ArrayList<C2602cv> arrayList11 = c2778fv.f13010for;
        if (arrayList11.size() > 0) {
            if (c2778fv.f13002do == null) {
                c2778fv.f13002do = new Bundle();
            }
            Bundle bundle3 = c2778fv.f13002do.getBundle("android.car.EXTENSIONS");
            bundle3 = bundle3 == null ? new Bundle() : bundle3;
            Bundle bundle4 = new Bundle(bundle3);
            Bundle bundle5 = new Bundle();
            int i5 = 0;
            while (i5 < arrayList11.size()) {
                String num = Integer.toString(i5);
                C2602cv c2602cv2 = arrayList11.get(i5);
                Bundle bundle6 = new Bundle();
                if (c2602cv2.f12397do == null && (i = c2602cv2.f12402if) != 0) {
                    c2602cv2.f12397do = IconCompat.m3720if(resources, str2, i);
                }
                IconCompat iconCompat3 = c2602cv2.f12397do;
                bundle6.putInt("icon", iconCompat3 != null ? iconCompat3.m3724new() : 0);
                bundle6.putCharSequence("title", c2602cv2.f12398do);
                bundle6.putParcelable("actionIntent", c2602cv2.f12395do);
                Bundle bundle7 = c2602cv2.f12396do;
                Bundle bundle8 = bundle7 != null ? new Bundle(bundle7) : new Bundle();
                bundle8.putBoolean("android.support.allowGeneratedReplies", c2602cv2.f12399do);
                bundle6.putBundle("extras", bundle8);
                C3598qz[] c3598qzArr = c2602cv2.f12400do;
                if (c3598qzArr == null) {
                    bundleArr = null;
                    arrayList2 = arrayList11;
                    arrayList3 = arrayList9;
                    str = str2;
                } else {
                    Bundle[] bundleArr2 = new Bundle[c3598qzArr.length];
                    arrayList2 = arrayList11;
                    str = str2;
                    int i6 = 0;
                    while (i6 < c3598qzArr.length) {
                        C3598qz c3598qz = c3598qzArr[i6];
                        C3598qz[] c3598qzArr2 = c3598qzArr;
                        Bundle bundle9 = new Bundle();
                        c3598qz.getClass();
                        bundle9.putString("resultKey", null);
                        bundle9.putCharSequence("label", null);
                        bundle9.putCharSequenceArray("choices", null);
                        bundle9.putBoolean("allowFreeFormInput", false);
                        bundle9.putBundle("extras", null);
                        bundleArr2[i6] = bundle9;
                        i6++;
                        c3598qzArr = c3598qzArr2;
                        arrayList9 = arrayList9;
                    }
                    arrayList3 = arrayList9;
                    bundleArr = bundleArr2;
                }
                bundle6.putParcelableArray("remoteInputs", bundleArr);
                bundle6.putBoolean("showsUserInterface", c2602cv2.f12403if);
                bundle6.putInt("semanticAction", c2602cv2.f12394do);
                bundle5.putBundle(num, bundle6);
                i5++;
                resources = null;
                str2 = str;
                arrayList11 = arrayList2;
                arrayList9 = arrayList3;
            }
            arrayList = arrayList9;
            bundle3.putBundle("invisible_actions", bundle5);
            bundle4.putBundle("invisible_actions", bundle5);
            if (c2778fv.f13002do == null) {
                c2778fv.f13002do = new Bundle();
            }
            c2778fv.f13002do.putBundle("android.car.EXTENSIONS", bundle3);
            c2953iv = this;
            c2953iv.f13592do.putBundle("android.car.EXTENSIONS", bundle4);
        } else {
            arrayList = arrayList9;
        }
        int i7 = Build.VERSION.SDK_INT;
        if (i7 >= 24) {
            c2953iv.f13590do.setExtras(c2778fv.f13002do);
            r4 = 0;
            Cnew.m6975try(c2953iv.f13590do, null);
        } else {
            r4 = 0;
        }
        if (i7 >= 26) {
            Ctry.m6980if(c2953iv.f13590do, 0);
            Ctry.m6982try(c2953iv.f13590do, r4);
            Ctry.m6976case(c2953iv.f13590do, r4);
            Ctry.m6978else(c2953iv.f13590do, 0L);
            Ctry.m6981new(c2953iv.f13590do, 0);
            if (!TextUtils.isEmpty(c2778fv.f13014if)) {
                c2953iv.f13590do.setSound(r4).setDefaults(0).setLights(0, 0, 0).setVibrate(r4);
            }
        }
        if (i7 >= 28) {
            Iterator<Lw> it6 = arrayList.iterator();
            while (it6.hasNext()) {
                Lw next3 = it6.next();
                Notification.Builder builder3 = c2953iv.f13590do;
                next3.getClass();
                Ccase.m6944do(builder3, Lw.Cdo.m1360if(next3));
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            Celse.m6956do(c2953iv.f13590do, c2778fv.f13011for);
            Celse.m6958if(c2953iv.f13590do, null);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6943do(C2602cv c2602cv) {
        int i;
        int i2 = Build.VERSION.SDK_INT;
        if (c2602cv.f12397do == null && (i = c2602cv.f12402if) != 0) {
            c2602cv.f12397do = IconCompat.m3720if(null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, i);
        }
        IconCompat iconCompat = c2602cv.f12397do;
        PendingIntent pendingIntent = c2602cv.f12395do;
        CharSequence charSequence = c2602cv.f12398do;
        Notification.Action.Builder m6960do = i2 >= 23 ? Cfor.m6960do(iconCompat != null ? iconCompat.m3722else(null) : null, charSequence, pendingIntent) : Cdo.m6955try(iconCompat != null ? iconCompat.m3724new() : 0, charSequence, pendingIntent);
        C3598qz[] c3598qzArr = c2602cv.f12400do;
        if (c3598qzArr != null) {
            RemoteInput[] remoteInputArr = new RemoteInput[c3598qzArr.length];
            for (int i3 = 0; i3 < c3598qzArr.length; i3++) {
                remoteInputArr[i3] = C3598qz.m7910do(c3598qzArr[i3]);
            }
            for (RemoteInput remoteInput : remoteInputArr) {
                Cdo.m6950for(m6960do, remoteInput);
            }
        }
        Bundle bundle = c2602cv.f12396do;
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        boolean z = c2602cv.f12399do;
        bundle2.putBoolean("android.support.allowGeneratedReplies", z);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 24) {
            Cnew.m6971do(m6960do, z);
        }
        int i5 = c2602cv.f12394do;
        bundle2.putInt("android.support.action.semanticAction", i5);
        if (i4 >= 28) {
            Ccase.m6945if(m6960do, i5);
        }
        if (i4 >= 29) {
            Celse.m6957for(m6960do, c2602cv.f12401for);
        }
        if (i4 >= 31) {
            Cgoto.m6963do(m6960do, c2602cv.f12404new);
        }
        bundle2.putBoolean("android.support.action.showsUserInterface", c2602cv.f12403if);
        Cdo.m6952if(m6960do, bundle2);
        Cdo.m6948do(this.f13590do, Cdo.m6953new(m6960do));
    }
}
