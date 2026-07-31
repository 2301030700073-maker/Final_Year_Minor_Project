package com.propertyguru.webkit;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import com.facebook.react.bridge.BaseActivityEventListener;
import java.io.File;
import java.net.URI;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IncognitoWebViewChromeClient.kt */
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u000b"}, d2 = {"com/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1", "Lcom/facebook/react/bridge/BaseActivityEventListener;", "onActivityResult", "", "activity", "Landroid/app/Activity;", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "propertyguru_react-native-webkit_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class IncognitoWebViewChromeClient$activityEventListener$1 extends BaseActivityEventListener {
    final /* synthetic */ IncognitoWebViewChromeClient this$0;

    IncognitoWebViewChromeClient$activityEventListener$1(IncognitoWebViewChromeClient incognitoWebViewChromeClient) {
        this.this$0 = incognitoWebViewChromeClient;
    }

    @Override // com.facebook.react.bridge.BaseActivityEventListener, com.facebook.react.bridge.ActivityEventListener
    public void onActivityResult(Activity activity, int requestCode, int resultCode, Intent data) {
        List list;
        List list2;
        Uri[] parseResult;
        List list3;
        ValueCallback valueCallback;
        ValueCallback valueCallback2;
        if (resultCode != -1) {
            valueCallback2 = this.this$0.filePathCallback;
            if (valueCallback2 != null) {
                valueCallback2.onReceiveValue(null);
            }
            this.this$0.filePathCallback = null;
            return;
        }
        list = this.this$0.tempFilePaths;
        CollectionsKt.removeAll(list, new Function1() { // from class: com.propertyguru.webkit.IncognitoWebViewChromeClient$activityEventListener$1$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean onActivityResult$lambda$0;
                onActivityResult$lambda$0 = IncognitoWebViewChromeClient$activityEventListener$1.onActivityResult$lambda$0((String) obj);
                return Boolean.valueOf(onActivityResult$lambda$0);
            }
        });
        list2 = this.this$0.tempFilePaths;
        String str = (String) CollectionsKt.firstOrNull(list2);
        if (resultCode != -1) {
            parseResult = null;
        } else if (str != null) {
            parseResult = new Uri[]{Uri.parse(str)};
        } else {
            parseResult = WebChromeClient.FileChooserParams.parseResult(resultCode, data);
        }
        list3 = this.this$0.tempFilePaths;
        list3.clear();
        valueCallback = this.this$0.filePathCallback;
        if (valueCallback != null) {
            valueCallback.onReceiveValue(parseResult);
        }
        this.this$0.filePathCallback = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onActivityResult$lambda$0(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        File file = new File(URI.create(path));
        if (!file.exists()) {
            return true;
        }
        if (file.length() != 0) {
            return false;
        }
        file.delete();
        return true;
    }
}
