package androidx.core.app;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.Person;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import androidx.core.graphics.drawable.IconCompat;
import coil3.util.UtilsKt;
import j$.util.Objects;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Person {
    public IconCompat mIcon;
    public boolean mIsBot;
    public boolean mIsImportant;
    public String mKey;
    public CharSequence mName;
    public String mUri;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Api28Impl {
        public static void addPerson(Notification.Builder builder, android.app.Person person) {
            builder.addPerson(person);
        }

        public static Person fromAndroidPerson(android.app.Person person) {
            IconCompat iconCompat;
            CharSequence name = person.getName();
            if (person.getIcon() != null) {
                Icon icon = person.getIcon();
                PorterDuff.Mode mode = IconCompat.DEFAULT_TINT_MODE;
                iconCompat = UtilsKt.createFromIconInner(icon);
            } else {
                iconCompat = null;
            }
            String uri = person.getUri();
            String key = person.getKey();
            boolean isBot = person.isBot();
            boolean isImportant = person.isImportant();
            Person person2 = new Person();
            person2.mName = name;
            person2.mIcon = iconCompat;
            person2.mUri = uri;
            person2.mKey = key;
            person2.mIsBot = isBot;
            person2.mIsImportant = isImportant;
            return person2;
        }

        public static String getDescription(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getDescription();
        }

        public static NotificationChannelGroup getNotificationChannelGroup(NotificationManager notificationManager) {
            return notificationManager.getNotificationChannelGroup("WIKIPEDIA_NOTIFICATIONS_OTHER");
        }

        public static void isBlocked(NotificationChannelGroup notificationChannelGroup) {
            notificationChannelGroup.isBlocked();
        }

        public static View requireViewById(Activity activity, int i) {
            return activity.requireViewById(i);
        }

        public static void setSemanticAction(Notification.Action.Builder builder, int i) {
            builder.setSemanticAction(i);
        }

        public static android.app.Person toAndroidPerson(Person person) {
            Person.Builder name = new Person.Builder().setName(person.mName);
            IconCompat iconCompat = person.mIcon;
            Icon icon = null;
            if (iconCompat != null) {
                iconCompat.getClass();
                icon = UtilsKt.toIcon(iconCompat, null);
            }
            return name.setIcon(icon).setUri(person.mUri).setKey(person.mKey).setBot(person.mIsBot).setImportant(person.mIsImportant).build();
        }
    }

    public static Person fromBundle(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("icon");
        CharSequence charSequence = bundle.getCharSequence("name");
        IconCompat createFromBundle = bundle2 != null ? IconCompat.createFromBundle(bundle2) : null;
        String string = bundle.getString("uri");
        String string2 = bundle.getString("key");
        boolean z = bundle.getBoolean("isBot");
        boolean z2 = bundle.getBoolean("isImportant");
        Person person = new Person();
        person.mName = charSequence;
        person.mIcon = createFromBundle;
        person.mUri = string;
        person.mKey = string2;
        person.mIsBot = z;
        person.mIsImportant = z2;
        return person;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Person)) {
            return false;
        }
        Person person = (Person) obj;
        String str = this.mKey;
        String str2 = person.mKey;
        return (str == null && str2 == null) ? Objects.equals(Objects.toString(this.mName), Objects.toString(person.mName)) && Objects.equals(this.mUri, person.mUri) && Boolean.valueOf(this.mIsBot).equals(Boolean.valueOf(person.mIsBot)) && Boolean.valueOf(this.mIsImportant).equals(Boolean.valueOf(person.mIsImportant)) : Objects.equals(str, str2);
    }

    public final int hashCode() {
        String str = this.mKey;
        return str != null ? str.hashCode() : Objects.hash(this.mName, this.mUri, Boolean.valueOf(this.mIsBot), Boolean.valueOf(this.mIsImportant));
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("name", this.mName);
        IconCompat iconCompat = this.mIcon;
        Bundle bundle2 = null;
        if (iconCompat != null) {
            iconCompat.getClass();
            Bundle bundle3 = new Bundle();
            switch (iconCompat.mType) {
                case -1:
                    bundle3.putParcelable("obj", (Parcelable) iconCompat.mObj1);
                    break;
                case 0:
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Invalid icon");
                    return null;
                case 1:
                case 5:
                    bundle3.putParcelable("obj", (Bitmap) iconCompat.mObj1);
                    break;
                case 2:
                case 4:
                case 6:
                    bundle3.putString("obj", (String) iconCompat.mObj1);
                    break;
                case 3:
                    bundle3.putByteArray("obj", (byte[]) iconCompat.mObj1);
                    break;
            }
            bundle3.putInt("type", iconCompat.mType);
            bundle3.putInt("int1", iconCompat.mInt1);
            bundle3.putInt("int2", iconCompat.mInt2);
            bundle3.putString("string1", iconCompat.mString1);
            ColorStateList colorStateList = iconCompat.mTintList;
            if (colorStateList != null) {
                bundle3.putParcelable("tint_list", colorStateList);
            }
            PorterDuff.Mode mode = iconCompat.mTintMode;
            if (mode != IconCompat.DEFAULT_TINT_MODE) {
                bundle3.putString("tint_mode", mode.name());
            }
            bundle2 = bundle3;
        }
        bundle.putBundle("icon", bundle2);
        bundle.putString("uri", this.mUri);
        bundle.putString("key", this.mKey);
        bundle.putBoolean("isBot", this.mIsBot);
        bundle.putBoolean("isImportant", this.mIsImportant);
        return bundle;
    }
}
