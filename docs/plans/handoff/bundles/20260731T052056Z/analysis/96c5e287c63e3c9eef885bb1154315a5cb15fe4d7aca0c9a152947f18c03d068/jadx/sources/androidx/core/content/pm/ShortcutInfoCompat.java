package androidx.core.content.pm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.LocusId;
import android.content.pm.ShortcutInfo;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.core.app.Person;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.work.Operation$State;
import coil3.util.UtilsKt;
import com.hcaptcha.sdk.HCaptchaCompat;
import java.util.Arrays;
import java.util.Set;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShortcutInfoCompat {
    public ComponentName mActivity;
    public Set mCategories;
    public Context mContext;
    public CharSequence mDisabledMessage;
    public PersistableBundle mExtras;
    public IconCompat mIcon;
    public String mId;
    public Intent[] mIntents;
    public CharSequence mLabel;
    public LocusIdCompat mLocusId;
    public CharSequence mLongLabel;
    public Person[] mPersons;
    public int mRank;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public final ShortcutInfoCompat mInfo;

        public Builder(Context context, ShortcutInfo shortcutInfo) {
            Person[] personArr;
            String string;
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
            this.mInfo = shortcutInfoCompat;
            shortcutInfoCompat.mContext = context;
            shortcutInfoCompat.mId = shortcutInfo.getId();
            shortcutInfo.getPackage();
            Intent[] intents = shortcutInfo.getIntents();
            shortcutInfoCompat.mIntents = (Intent[]) Arrays.copyOf(intents, intents.length);
            shortcutInfoCompat.mActivity = shortcutInfo.getActivity();
            shortcutInfoCompat.mLabel = shortcutInfo.getShortLabel();
            shortcutInfoCompat.mLongLabel = shortcutInfo.getLongLabel();
            shortcutInfoCompat.mDisabledMessage = shortcutInfo.getDisabledMessage();
            if (Build.VERSION.SDK_INT >= 28) {
                shortcutInfo.getDisabledReason();
            } else {
                shortcutInfo.isEnabled();
            }
            shortcutInfoCompat.mCategories = shortcutInfo.getCategories();
            PersistableBundle extras = shortcutInfo.getExtras();
            LocusIdCompat locusIdCompat = null;
            if (extras == null || !extras.containsKey("extraPersonCount")) {
                personArr = null;
            } else {
                int i = extras.getInt("extraPersonCount");
                personArr = new Person[i];
                int i2 = 0;
                while (i2 < i) {
                    StringBuilder sb = new StringBuilder("extraPerson_");
                    int i3 = i2 + 1;
                    sb.append(i3);
                    PersistableBundle persistableBundle = extras.getPersistableBundle(sb.toString());
                    String string2 = persistableBundle.getString("name");
                    String string3 = persistableBundle.getString("uri");
                    String string4 = persistableBundle.getString("key");
                    boolean z = persistableBundle.getBoolean("isBot");
                    boolean z2 = persistableBundle.getBoolean("isImportant");
                    Person person = new Person();
                    person.mName = string2;
                    person.mIcon = null;
                    person.mUri = string3;
                    person.mKey = string4;
                    person.mIsBot = z;
                    person.mIsImportant = z2;
                    personArr[i2] = person;
                    i2 = i3;
                }
            }
            shortcutInfoCompat.mPersons = personArr;
            shortcutInfo.getUserHandle();
            shortcutInfo.getLastChangedTimestamp();
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 30) {
                shortcutInfo.isCached();
            }
            shortcutInfo.isDynamic();
            shortcutInfo.isPinned();
            shortcutInfo.isDeclaredInManifest();
            shortcutInfo.isImmutable();
            shortcutInfo.isEnabled();
            shortcutInfo.hasKeyFieldsOnly();
            ShortcutInfoCompat shortcutInfoCompat2 = this.mInfo;
            if (i4 < 29) {
                PersistableBundle extras2 = shortcutInfo.getExtras();
                if (extras2 != null && (string = extras2.getString("extraLocusId")) != null) {
                    locusIdCompat = new LocusIdCompat(string);
                }
            } else if (shortcutInfo.getLocusId() != null) {
                LocusId locusId = shortcutInfo.getLocusId();
                Operation$State.checkNotNull("locusId cannot be null", locusId);
                String id = FileUtil.getId(locusId);
                if (TextUtils.isEmpty(id)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("id cannot be empty");
                    throw null;
                }
                locusIdCompat = new LocusIdCompat(id);
            }
            shortcutInfoCompat2.mLocusId = locusIdCompat;
            this.mInfo.mRank = shortcutInfo.getRank();
            this.mInfo.mExtras = shortcutInfo.getExtras();
        }
    }

    public final ShortcutInfo toShortcutInfo() {
        ShortcutInfo.Builder intents = new ShortcutInfo.Builder(this.mContext, this.mId).setShortLabel(this.mLabel).setIntents(this.mIntents);
        IconCompat iconCompat = this.mIcon;
        if (iconCompat != null) {
            intents.setIcon(UtilsKt.toIcon(iconCompat, this.mContext));
        }
        if (!TextUtils.isEmpty(this.mLongLabel)) {
            intents.setLongLabel(this.mLongLabel);
        }
        if (!TextUtils.isEmpty(this.mDisabledMessage)) {
            intents.setDisabledMessage(this.mDisabledMessage);
        }
        ComponentName componentName = this.mActivity;
        if (componentName != null) {
            intents.setActivity(componentName);
        }
        Set<String> set = this.mCategories;
        if (set != null) {
            intents.setCategories(set);
        }
        intents.setRank(this.mRank);
        PersistableBundle persistableBundle = this.mExtras;
        if (persistableBundle != null) {
            intents.setExtras(persistableBundle);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            Person[] personArr = this.mPersons;
            if (personArr != null && personArr.length > 0) {
                int length = personArr.length;
                android.app.Person[] personArr2 = new android.app.Person[length];
                for (int i = 0; i < length; i++) {
                    Person person = this.mPersons[i];
                    person.getClass();
                    personArr2[i] = Person.Api28Impl.toAndroidPerson(person);
                }
                intents.setPersons(personArr2);
            }
            LocusIdCompat locusIdCompat = this.mLocusId;
            if (locusIdCompat != null) {
                intents.setLocusId(locusIdCompat.mWrapped);
            }
            intents.setLongLived(false);
        } else {
            PersistableBundle persistableBundle2 = this.mExtras;
            if (persistableBundle2 == null) {
                persistableBundle2 = new PersistableBundle();
                this.mExtras = persistableBundle2;
            }
            Person[] personArr3 = this.mPersons;
            if (personArr3 != null && personArr3.length > 0) {
                persistableBundle2.putInt("extraPersonCount", personArr3.length);
                int i2 = 0;
                while (i2 < this.mPersons.length) {
                    PersistableBundle persistableBundle3 = this.mExtras;
                    StringBuilder sb = new StringBuilder("extraPerson_");
                    int i3 = i2 + 1;
                    sb.append(i3);
                    String sb2 = sb.toString();
                    Person person2 = this.mPersons[i2];
                    person2.getClass();
                    PersistableBundle persistableBundle4 = new PersistableBundle();
                    CharSequence charSequence = person2.mName;
                    persistableBundle4.putString("name", charSequence != null ? charSequence.toString() : null);
                    persistableBundle4.putString("uri", person2.mUri);
                    persistableBundle4.putString("key", person2.mKey);
                    persistableBundle4.putBoolean("isBot", person2.mIsBot);
                    persistableBundle4.putBoolean("isImportant", person2.mIsImportant);
                    persistableBundle3.putPersistableBundle(sb2, persistableBundle4);
                    i2 = i3;
                }
            }
            LocusIdCompat locusIdCompat2 = this.mLocusId;
            if (locusIdCompat2 != null) {
                this.mExtras.putString("extraLocusId", locusIdCompat2.mId);
            }
            this.mExtras.putBoolean("extraLongLived", false);
            intents.setExtras(this.mExtras);
        }
        if (Build.VERSION.SDK_INT >= 33) {
            HCaptchaCompat.setExcludedFromSurfaces(intents);
        }
        return intents.build();
    }
}
