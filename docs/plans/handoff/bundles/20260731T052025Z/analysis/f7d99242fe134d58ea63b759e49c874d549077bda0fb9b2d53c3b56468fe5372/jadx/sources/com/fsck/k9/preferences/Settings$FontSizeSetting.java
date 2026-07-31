package com.fsck.k9.preferences;

import android.content.Context;
import com.fsck.k9.R;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;
import kotlin.io.CloseableKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Settings$FontSizeSetting extends Settings$SettingsDescription {
    public final /* synthetic */ int $r8$classId;
    public Map mapping;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Settings$FontSizeSetting(int i) {
        super(-1);
        this.$r8$classId = i;
        int i2 = 0;
        switch (i) {
            case 3:
                super("EXPUNGE_IMMEDIATELY");
                Context context = (Context) CloseableKt.get$default(Context.class);
                HashMap hashMap = new HashMap();
                String[] stringArray = context.getResources().getStringArray(R.array.expunge_policy_values);
                int length = stringArray.length;
                while (i2 < length) {
                    String str = stringArray[i2];
                    hashMap.put(str, str);
                    i2++;
                }
                this.mapping = DesugarCollections.unmodifiableMap(hashMap);
                break;
            case 4:
                super("");
                Context context2 = (Context) CloseableKt.get$default(Context.class);
                HashMap hashMap2 = new HashMap();
                String[] stringArray2 = context2.getResources().getStringArray(R.array.language_values);
                int length2 = stringArray2.length;
                while (i2 < length2) {
                    String str2 = stringArray2[i2];
                    if (str2.length() == 0) {
                        hashMap2.put("", "default");
                    } else {
                        hashMap2.put(str2, str2);
                    }
                    i2++;
                }
                this.mapping = DesugarCollections.unmodifiableMap(hashMap2);
                break;
            case 5:
                super(3);
                HashMap hashMap3 = new HashMap();
                hashMap3.put(1, "smallest");
                hashMap3.put(2, "smaller");
                hashMap3.put(3, "normal");
                hashMap3.put(4, "larger");
                hashMap3.put(5, "largest");
                this.mapping = DesugarCollections.unmodifiableMap(hashMap3);
                break;
            default:
                HashMap hashMap4 = new HashMap();
                hashMap4.put(10, "tiniest");
                hashMap4.put(12, "tiny");
                hashMap4.put(14, "smaller");
                hashMap4.put(16, "small");
                hashMap4.put(18, "medium");
                hashMap4.put(20, "large");
                hashMap4.put(22, "larger");
                this.mapping = DesugarCollections.unmodifiableMap(hashMap4);
                break;
        }
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public final Object fromPrettyString(String str) {
        for (Map.Entry entry : getMapping().entrySet()) {
            if (((String) entry.getValue()).equals(str)) {
                return entry.getKey();
            }
        }
        throw new Settings$InvalidSettingValueException();
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public final Object fromString(String str) {
        switch (this.$r8$classId) {
            case 0:
                try {
                    Integer valueOf = Integer.valueOf(Integer.parseInt(str));
                    if (this.mapping.containsKey(valueOf)) {
                        return valueOf;
                    }
                } catch (NumberFormatException unused) {
                }
                throw new Settings$InvalidSettingValueException();
            case 1:
                try {
                    Integer valueOf2 = Integer.valueOf(Integer.parseInt(str));
                    if (this.mapping.containsKey(valueOf2)) {
                        return valueOf2;
                    }
                } catch (NumberFormatException unused2) {
                }
                throw new Settings$InvalidSettingValueException();
            case 2:
                try {
                    return Integer.valueOf(Integer.parseInt(str));
                } catch (NumberFormatException unused3) {
                    throw new Settings$InvalidSettingValueException();
                }
            case 3:
                if (this.mapping.containsKey(str)) {
                    return str;
                }
                throw new Settings$InvalidSettingValueException();
            case 4:
                if (this.mapping.containsKey(str)) {
                    return str;
                }
                throw new Settings$InvalidSettingValueException();
            default:
                try {
                    Integer valueOf3 = Integer.valueOf(Integer.parseInt(str));
                    if (this.mapping.containsKey(valueOf3)) {
                        return valueOf3;
                    }
                } catch (NumberFormatException unused4) {
                }
                throw new Settings$InvalidSettingValueException();
        }
    }

    public final Map getMapping() {
        switch (this.$r8$classId) {
        }
        return this.mapping;
    }

    @Override // com.fsck.k9.preferences.Settings$SettingsDescription
    public final String toPrettyString(Object obj) {
        return (String) getMapping().get(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Settings$FontSizeSetting(int i, int i2) {
        super(Integer.valueOf(i));
        this.$r8$classId = 2;
        Context context = (Context) CloseableKt.get$default(Context.class);
        HashMap hashMap = new HashMap();
        for (String str : context.getResources().getStringArray(i2)) {
            hashMap.put(Integer.valueOf(Integer.parseInt(str)), str);
        }
        this.mapping = DesugarCollections.unmodifiableMap(hashMap);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Settings$FontSizeSetting(Object obj) {
        super(obj);
        this.$r8$classId = 1;
    }
}
