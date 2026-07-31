package androidx.fragment.app;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.appcompat.app.AppCompatActivity;
import coil3.Extras;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.ExceptionsKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentManager$FragmentIntentSenderContract extends ExceptionsKt {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FragmentManager$FragmentIntentSenderContract(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.ExceptionsKt
    public final Intent createIntent(AppCompatActivity appCompatActivity, Object obj) {
        Bundle bundleExtra;
        switch (this.$r8$classId) {
            case 0:
                IntentSenderRequest intentSenderRequest = (IntentSenderRequest) obj;
                Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
                Intent intent2 = intentSenderRequest.fillInIntent;
                if (intent2 != null && (bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                    intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                    intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                        intentSenderRequest = new IntentSenderRequest(intentSenderRequest.intentSender, null, intentSenderRequest.flagsMask, intentSenderRequest.flagsValues);
                    }
                }
                intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest);
                if (FragmentManagerImpl.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
                }
                return intent;
            case 1:
                String[] strArr = (String[]) obj;
                strArr.getClass();
                Intent putExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
                putExtra.getClass();
                return putExtra;
            case 2:
                String str = (String) obj;
                str.getClass();
                Intent putExtra2 = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", new String[]{str});
                putExtra2.getClass();
                return putExtra2;
            default:
                Intent intent3 = (Intent) obj;
                intent3.getClass();
                return intent3;
        }
    }

    @Override // kotlin.ExceptionsKt
    public Extras.Key getSynchronousResult(AppCompatActivity appCompatActivity, Object obj) {
        switch (this.$r8$classId) {
            case 1:
                String[] strArr = (String[]) obj;
                strArr.getClass();
                if (strArr.length == 0) {
                    return new Extras.Key(EmptyMap.INSTANCE);
                }
                for (String str : strArr) {
                    if (FileUtil.checkSelfPermission(appCompatActivity, str) != 0) {
                        return null;
                    }
                }
                int mapCapacity = MapsKt__MapsKt.mapCapacity(strArr.length);
                if (mapCapacity < 16) {
                    mapCapacity = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                for (String str2 : strArr) {
                    linkedHashMap.put(str2, Boolean.TRUE);
                }
                return new Extras.Key(linkedHashMap);
            case 2:
                String str3 = (String) obj;
                str3.getClass();
                if (FileUtil.checkSelfPermission(appCompatActivity, str3) == 0) {
                    return new Extras.Key(Boolean.TRUE);
                }
                return null;
            default:
                return super.getSynchronousResult(appCompatActivity, obj);
        }
    }

    @Override // kotlin.ExceptionsKt
    public final Object parseResult(Intent intent, int i) {
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                return new ActivityResult(intent, i);
            case 1:
                if (i == -1 && intent != null) {
                    String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                    int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                    if (intArrayExtra != null && stringArrayExtra != null) {
                        ArrayList arrayList = new ArrayList(intArrayExtra.length);
                        for (int i2 : intArrayExtra) {
                            arrayList.add(Boolean.valueOf(i2 == 0));
                        }
                        return MapsKt__MapsKt.toMap(CollectionsKt.zip(ArraysKt___ArraysKt.filterNotNull(stringArrayExtra), arrayList));
                    }
                }
                return EmptyMap.INSTANCE;
            case 2:
                if (intent == null || i != -1) {
                    return Boolean.FALSE;
                }
                int[] intArrayExtra2 = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                if (intArrayExtra2 != null) {
                    int length = intArrayExtra2.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            if (intArrayExtra2[i3] == 0) {
                                z = true;
                            } else {
                                i3++;
                            }
                        }
                    }
                }
                return Boolean.valueOf(z);
            default:
                return new ActivityResult(intent, i);
        }
    }
}
