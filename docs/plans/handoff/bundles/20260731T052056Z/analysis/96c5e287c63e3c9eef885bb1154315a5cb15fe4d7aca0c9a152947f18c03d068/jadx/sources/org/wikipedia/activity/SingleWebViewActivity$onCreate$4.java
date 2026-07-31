package org.wikipedia.activity;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Message;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.appcompat.app.AlertController;
import coil3.ImageLoader$Builder;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import j$.util.Objects;
import org.wikipedia.views.SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SingleWebViewActivity$onCreate$4 extends WebChromeClient {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ SingleWebViewActivity$onCreate$4(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        switch (this.$r8$classId) {
            case 1:
                consoleMessage.message();
                return true;
            default:
                return super.onConsoleMessage(consoleMessage);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        switch (this.$r8$classId) {
            case 1:
                if (z2) {
                    try {
                        WebView.HitTestResult hitTestResult = webView.getHitTestResult();
                        if (hitTestResult.getType() == 7) {
                            Uri parse = Uri.parse(hitTestResult.getExtra());
                            Intent intent = new Intent("android.intent.action.VIEW", parse);
                            intent.addFlags(268435456);
                            ((Context) ((ImageLoader$Builder) this.this$0).application).startActivity(intent);
                            Objects.toString(parse);
                            break;
                        }
                    } catch (Exception e) {
                        e.getMessage();
                    }
                }
                break;
        }
        return super.onCreateWindow(webView, z, z2, message);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
        switch (this.$r8$classId) {
            case 0:
                final int i = 0;
                MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder((SingleWebViewActivity) this.this$0, 0);
                AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
                alertParams.mMessage = str2;
                materialAlertDialogBuilder.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: org.wikipedia.activity.SingleWebViewActivity$onCreate$4$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        int i3 = i;
                        JsResult jsResult2 = jsResult;
                        switch (i3) {
                            case 0:
                                if (jsResult2 != null) {
                                    jsResult2.confirm();
                                    break;
                                }
                                break;
                            default:
                                if (jsResult2 != null) {
                                    jsResult2.cancel();
                                    break;
                                }
                                break;
                        }
                    }
                });
                final int i2 = 1;
                materialAlertDialogBuilder.setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: org.wikipedia.activity.SingleWebViewActivity$onCreate$4$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i22) {
                        int i3 = i2;
                        JsResult jsResult2 = jsResult;
                        switch (i3) {
                            case 0:
                                if (jsResult2 != null) {
                                    jsResult2.confirm();
                                    break;
                                }
                                break;
                            default:
                                if (jsResult2 != null) {
                                    jsResult2.cancel();
                                    break;
                                }
                                break;
                        }
                    }
                });
                alertParams.mOnDismissListener = new SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5(1, jsResult);
                materialAlertDialogBuilder.show();
                return true;
            default:
                return super.onJsConfirm(webView, str, str2, jsResult);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        switch (this.$r8$classId) {
            case 1:
                break;
            default:
                super.onProgressChanged(webView, i);
                break;
        }
    }

    private final void onProgressChanged$com$hcaptcha$sdk$HCaptchaWebViewHelper$HCaptchaWebChromeClient(WebView webView, int i) {
    }
}
