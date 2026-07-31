package app.k9mail.feature.settings.p000import.ui;

import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.appcompat.app.AppCompatActivity;
import androidx.biometric.BiometricPrompt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.FragmentManager;
import androidx.tracing.TraceApi29Impl;
import app.k9mail.core.android.common.activity.CreateDocumentResultContract$Input;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerActivity;
import app.k9mail.feature.widget.unread.UnreadWidgetChooseAccountActivity;
import coil3.network.internal.UtilsKt;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import net.openid.appauth.AuthorizationException;
import net.openid.appauth.AuthorizationResponse;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AuthorizationContract extends OAuthBearer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ AuthorizationContract(int i) {
        this.$r8$classId = i;
    }

    @Override // com.fsck.k9.sasl.OAuthBearer
    public final Intent createIntent(AppCompatActivity appCompatActivity, Object obj) {
        Bundle bundleExtra;
        switch (this.$r8$classId) {
            case 0:
                Intent intent = (Intent) obj;
                intent.getClass();
                return intent;
            case 1:
                String str = (String) obj;
                str.getClass();
                Intent putExtra = new Intent("android.intent.action.CREATE_DOCUMENT").setType(UtilsKt.MIME_TYPE_TEXT_PLAIN).putExtra("android.intent.extra.TITLE", str);
                putExtra.getClass();
                return putExtra;
            case 2:
                String str2 = (String) obj;
                str2.getClass();
                Intent type = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").setType(str2);
                type.getClass();
                return type;
            case 3:
                String[] strArr = (String[]) obj;
                strArr.getClass();
                Intent type2 = new Intent("android.intent.action.OPEN_DOCUMENT").putExtra("android.intent.extra.MIME_TYPES", strArr).setType("*/*");
                type2.getClass();
                return type2;
            case 4:
                String[] strArr2 = (String[]) obj;
                strArr2.getClass();
                Intent putExtra2 = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr2);
                putExtra2.getClass();
                return putExtra2;
            case 5:
                String str3 = (String) obj;
                str3.getClass();
                Intent putExtra3 = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", new String[]{str3});
                putExtra3.getClass();
                return putExtra3;
            case 6:
                Intent intent2 = (Intent) obj;
                intent2.getClass();
                return intent2;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                IntentSenderRequest intentSenderRequest = (IntentSenderRequest) obj;
                Intent intent3 = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
                Intent intent4 = intentSenderRequest.fillInIntent;
                if (intent4 != null && (bundleExtra = intent4.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                    intent3.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                    intent4.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    if (intent4.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                        IntentSender intentSender = intentSenderRequest.intentSender;
                        intentSender.getClass();
                        intentSenderRequest = new IntentSenderRequest(intentSender, null, intentSenderRequest.flagsMask, intentSenderRequest.flagsValues);
                    }
                }
                intent3.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "CreateIntent created the following intent: " + intent3);
                }
                return intent3;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                CreateDocumentResultContract$Input createDocumentResultContract$Input = (CreateDocumentResultContract$Input) obj;
                createDocumentResultContract$Input.getClass();
                Intent putExtra4 = new Intent("android.intent.action.CREATE_DOCUMENT").addCategory("android.intent.category.OPENABLE").setType(createDocumentResultContract$Input.mimeType).putExtra("android.intent.extra.TITLE", createDocumentResultContract$Input.title);
                putExtra4.getClass();
                return putExtra4;
            case 9:
                ((Unit) obj).getClass();
                return new Intent(appCompatActivity, (Class<?>) QrCodeScannerActivity.class);
            default:
                ((Unit) obj).getClass();
                return new Intent(appCompatActivity, (Class<?>) UnreadWidgetChooseAccountActivity.class);
        }
    }

    @Override // com.fsck.k9.sasl.OAuthBearer
    public BiometricPrompt getSynchronousResult(AppCompatActivity appCompatActivity, Object obj) {
        int i = 2;
        switch (this.$r8$classId) {
            case 1:
                ((String) obj).getClass();
                return null;
            case 2:
                ((String) obj).getClass();
                return null;
            case 3:
                ((String[]) obj).getClass();
                return null;
            case 4:
                String[] strArr = (String[]) obj;
                strArr.getClass();
                if (strArr.length == 0) {
                    return new BiometricPrompt(i, EmptyMap.INSTANCE);
                }
                for (String str : strArr) {
                    if (TraceApi29Impl.checkSelfPermission(appCompatActivity, str) != 0) {
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
                return new BiometricPrompt(i, linkedHashMap);
            case 5:
                String str3 = (String) obj;
                str3.getClass();
                if (TraceApi29Impl.checkSelfPermission(appCompatActivity, str3) == 0) {
                    return new BiometricPrompt(i, Boolean.TRUE);
                }
                return null;
            default:
                return super.getSynchronousResult(appCompatActivity, obj);
        }
    }

    @Override // com.fsck.k9.sasl.OAuthBearer
    public final Object parseResult(Intent intent, int i) {
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                if (i != -1 || intent == null) {
                    return null;
                }
                return new AuthorizationResult(AuthorizationResponse.fromIntent(intent), AuthorizationException.fromIntent(intent));
            case 1:
                if (i != -1) {
                    intent = null;
                }
                if (intent != null) {
                    return intent.getData();
                }
                return null;
            case 2:
                if (i != -1) {
                    intent = null;
                }
                if (intent != null) {
                    return intent.getData();
                }
                return null;
            case 3:
                if (i != -1) {
                    intent = null;
                }
                if (intent != null) {
                    return intent.getData();
                }
                return null;
            case 4:
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
            case 5:
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
            case 6:
                return new ActivityResult(intent, i);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new ActivityResult(intent, i);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                if (i != -1) {
                    intent = null;
                }
                if (intent != null) {
                    return intent.getData();
                }
                return null;
            case 9:
                Uri data = intent != null ? intent.getData() : null;
                if (i == -1) {
                    return data;
                }
                return null;
            default:
                String stringExtra = intent != null ? intent.getStringExtra("com.fsck.k9.ChooseAccount_account_uuid") : null;
                if (i == -1) {
                    return stringExtra;
                }
                return null;
        }
    }
}
