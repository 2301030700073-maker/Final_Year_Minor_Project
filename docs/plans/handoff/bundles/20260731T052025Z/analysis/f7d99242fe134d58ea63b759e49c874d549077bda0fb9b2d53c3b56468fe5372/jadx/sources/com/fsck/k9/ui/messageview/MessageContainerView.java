package com.fsck.k9.ui.messageview;

import android.app.Activity;
import android.app.DownloadManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.biometric.BiometricPrompt;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidFontResourceLoader;
import androidx.compose.ui.platform.ComposeView;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
import app.k9mail.provider.K9FeatureThemeProvider;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.network.internal.UtilsKt;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.helper.ClipboardManager;
import com.fsck.k9.helper.Utility;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mailstore.AttachmentResolver;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.mailstore.DefaultAttachmentViewInfoMapper;
import com.fsck.k9.mailstore.MessageViewInfo;
import com.fsck.k9.message.html.DisplayHtml;
import com.fsck.k9.view.MessageWebView;
import com.fsck.k9.view.WebViewConfigProvider;
import com.google.android.material.textview.MaterialTextView;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticLambda1;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.mail.message.reader.api.domain.mapper.AttachmentViewInfoMapper;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$State;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$ViewModel;
import net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentId;
import net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem;
import net.thunderbird.feature.mail.message.reader.api.ui.component.organism.AttachmentCardKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Http2Connection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageContainerView extends LinearLayout implements View.OnCreateContextMenuListener, KoinComponent {
    public static final Set supportedDownloadUriSchemes = ArraysKt___ArraysKt.toSet(new String[]{"http", "https"});
    public AttachmentViewCallback attachmentCallback;
    public final Lazy attachmentViewInfoMapper$delegate;
    public final LinkedHashMap attachmentViewMap;
    public final LinkedHashMap attachments;
    public ViewGroup attachmentsContainer;
    public final Lazy clipboardManager$delegate;
    public AttachmentResolver currentAttachmentResolver;
    public String currentHtmlText;
    public final Lazy displayHtml$delegate;
    public final Lazy featureThemeProvider$delegate;
    public boolean hasHiddenExternalImages;
    public boolean isShowingPictures;
    public final Lazy linkTextHandler$delegate;
    public MessageWebView messageContentView;
    public MaterialTextView unsignedText;
    public View unsignedTextContainer;
    public View unsignedTextDivider;
    public final Lazy webViewConfigProvider$delegate;

    /* renamed from: $r8$lambda$O6l_Y-ERSvLdjg5Ywm1l-azpxi0, reason: not valid java name */
    public static void m944$r8$lambda$O6l_YERSvLdjg5Ywm1lazpxi0(String str, MessageContainerView messageContainerView, MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == 1) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("mailto:".concat(str)));
            Context context = messageContainerView.getContext();
            context.getClass();
            startActivityIfAvailable(context, intent);
            return;
        }
        if (itemId != 2) {
            if (itemId != 3) {
                return;
            }
            String string = messageContainerView.getContext().getString(R.string.webview_contextmenu_email_clipboard_label);
            string.getClass();
            messageContainerView.getClipboardManager().setText(string, str);
            return;
        }
        Address address = new Address(6, str, (String) null);
        Intent intent2 = new Intent("com.android.contacts.action.SHOW_OR_CREATE_CONTACT");
        intent2.setFlags(268435456);
        intent2.setData(Uri.fromParts("mailto", address.address, null));
        intent2.putExtra("com.android.contacts.action.CREATE_DESCRIPTION", address.toString());
        String str2 = address.personal;
        if (str2 != null) {
            intent2.putExtra("name", str2);
        }
        Context context2 = messageContainerView.getContext();
        context2.getClass();
        startActivityIfAvailable(context2, intent2);
    }

    public static void $r8$lambda$Z2Lxl3FQmIf3l5Ej_RhT5oEspik(MessageContainerView messageContainerView, boolean z, AttachmentViewInfo attachmentViewInfo, Uri uri, MenuItem menuItem) {
        menuItem.getClass();
        AttachmentViewCallback attachmentViewCallback = messageContainerView.attachmentCallback;
        if (attachmentViewCallback == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        int itemId = menuItem.getItemId();
        if (itemId == 5) {
            if (z) {
                ((MessageViewFragment) attachmentViewCallback).onViewAttachment(attachmentViewInfo);
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Context context = messageContainerView.getContext();
            context.getClass();
            startActivityIfAvailable(context, intent);
            return;
        }
        if (itemId != 6) {
            if (itemId != 7) {
                return;
            }
            String string = messageContainerView.getContext().getString(R.string.webview_contextmenu_image_clipboard_label);
            string.getClass();
            ClipboardManager clipboardManager = messageContainerView.getClipboardManager();
            String uri2 = uri.toString();
            uri2.getClass();
            clipboardManager.setText(string, uri2);
            return;
        }
        if (z) {
            ((MessageViewFragment) attachmentViewCallback).onSaveAttachment(attachmentViewInfo);
            return;
        }
        DownloadManager.Request request = new DownloadManager.Request(uri);
        if (Build.VERSION.SDK_INT >= 29) {
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, uri.getLastPathSegment());
        }
        request.setNotificationVisibility(1);
        Object systemService = messageContainerView.getContext().getSystemService("download");
        systemService.getClass();
        ((DownloadManager) systemService).enqueue(request);
    }

    /* renamed from: $r8$lambda$aE33UeGbmjjx-fQ-llH8019chtw, reason: not valid java name */
    public static void m945$r8$lambda$aE33UeGbmjjxfQllH8019chtw(String str, MessageContainerView messageContainerView, WebView webView, MenuItem menuItem) {
        Activity activity;
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == 1) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            Context context = messageContainerView.getContext();
            context.getClass();
            startActivityIfAvailable(context, intent);
            return;
        }
        if (itemId != 2) {
            if (itemId == 3) {
                String string = messageContainerView.getContext().getString(R.string.webview_contextmenu_link_clipboard_label);
                string.getClass();
                messageContainerView.getClipboardManager().setText(string, str);
                return;
            } else {
                if (itemId != 4) {
                    return;
                }
                Message obtainMessage = messageContainerView.getLinkTextHandler().obtainMessage();
                obtainMessage.getClass();
                webView.requestFocusNodeHref(obtainMessage);
                return;
            }
        }
        Context context2 = messageContainerView.getContext();
        context2.getClass();
        Intent action = new Intent().setAction("android.intent.action.SEND");
        action.putExtra("androidx.core.app.EXTRA_CALLING_PACKAGE", context2.getPackageName());
        action.putExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE", context2.getPackageName());
        action.addFlags(524288);
        Context context3 = context2;
        while (true) {
            if (!(context3 instanceof ContextWrapper)) {
                activity = null;
                break;
            } else {
                if (context3 instanceof Activity) {
                    activity = (Activity) context3;
                    break;
                }
                context3 = ((ContextWrapper) context3).getBaseContext();
            }
        }
        if (activity != null) {
            ComponentName componentName = activity.getComponentName();
            action.putExtra("androidx.core.app.EXTRA_CALLING_ACTIVITY", componentName);
            action.putExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY", componentName);
        }
        action.setType(UtilsKt.MIME_TYPE_TEXT_PLAIN);
        action.putExtra("android.intent.extra.TEXT", (CharSequence) str);
        action.setAction("android.intent.action.SEND");
        action.removeExtra("android.intent.extra.STREAM");
        action.setClipData(null);
        action.setFlags(action.getFlags() & (-2));
        context2.startActivity(Intent.createChooser(action, null, null));
    }

    public static void $r8$lambda$mMqPJ8nJo_am53VjX14GTEYAr_w(String str, MessageContainerView messageContainerView, MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == 1) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("tel:".concat(str)));
            Context context = messageContainerView.getContext();
            context.getClass();
            startActivityIfAvailable(context, intent);
            return;
        }
        if (itemId != 2) {
            if (itemId != 3) {
                return;
            }
            String string = messageContainerView.getContext().getString(R.string.webview_contextmenu_phone_clipboard_label);
            string.getClass();
            messageContainerView.getClipboardManager().setText(string, str);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.INSERT_OR_EDIT");
        intent2.setFlags(268435456);
        intent2.setType("vnd.android.cursor.item/contact");
        intent2.putExtra("phone", Uri.decode(str));
        Context context2 = messageContainerView.getContext();
        context2.getClass();
        startActivityIfAvailable(context2, intent2);
    }

    /* renamed from: $r8$lambda$nxUTfgxbH73fr8z4zbj7qNQ-lic, reason: not valid java name */
    public static void m946$r8$lambda$nxUTfgxbH73fr8z4zbj7qNQlic(int i, Composer composer, MessageViewInfo messageViewInfo, MessageContainerView messageContainerView, MessageReaderViewContract$ViewModel messageReaderViewContract$ViewModel) {
        GapComposer gapComposer = (GapComposer) composer;
        if (gapComposer.shouldExecute(i & 1, (i & 3) != 2)) {
            ((K9FeatureThemeProvider) messageContainerView.getFeatureThemeProvider()).WithTheme(Expect_jvmKt.rememberComposableLambda(-95050836, new MessageContainerView$$ExternalSyntheticLambda1(messageReaderViewContract$ViewModel, messageViewInfo, messageContainerView), gapComposer), gapComposer, 6);
        } else {
            gapComposer.skipToGroupEnd();
        }
    }

    public static void $r8$lambda$pdJ3dw3PcgmWZaGeEPct20tLjQQ(int i, Composer composer, MessageViewInfo messageViewInfo, MessageContainerView messageContainerView, MessageReaderViewContract$ViewModel messageReaderViewContract$ViewModel) {
        GapComposer gapComposer = (GapComposer) composer;
        if (!gapComposer.shouldExecute(i & 1, (i & 3) != 2)) {
            gapComposer.skipToGroupEnd();
            return;
        }
        MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(messageReaderViewContract$ViewModel.state, gapComposer);
        boolean changedInstance = gapComposer.changedInstance(messageReaderViewContract$ViewModel);
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj = Composer.Companion.Empty;
        if (changedInstance || rememberedValue == obj) {
            rememberedValue = new AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(messageReaderViewContract$ViewModel, 12);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Object obj2 = (Function1) rememberedValue;
        collectAsStateWithLifecycle.getClass();
        obj2.getClass();
        boolean changed = gapComposer.changed(obj2) | gapComposer.changedInstance(messageViewInfo);
        Object rememberedValue2 = gapComposer.rememberedValue();
        int i2 = 7;
        if (changed || rememberedValue2 == obj) {
            rememberedValue2 = new InterruptibleKt$runInterruptible$2(obj2, messageViewInfo, null, i2);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.LaunchedEffect(gapComposer, messageViewInfo, (Function2) rememberedValue2);
        FillElement fillElement = SizeKt.FillWholeMaxWidth;
        ProvidableCompositionLocal providableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
        ((ThemeSpacings) gapComposer.consume(providableCompositionLocal)).getClass();
        Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(fillElement, 16.0f);
        ((ThemeSpacings) gapComposer.consume(providableCompositionLocal)).getClass();
        ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.Start, gapComposer, 0);
        long j = gapComposer.compositeKeyHashCode;
        int i3 = (int) (j ^ (j >>> 32));
        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m218padding3ABfNKs);
        ComposeUiNode.Companion.getClass();
        Function0 function0 = ComposeUiNode.Companion.Constructor;
        gapComposer.startReusableNode();
        if (gapComposer.inserting) {
            gapComposer.createNode(function0);
        } else {
            gapComposer.useNode();
        }
        Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
        Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
        Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
        Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
        Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
        gapComposer.startReplaceGroup(-1209968376);
        for (AttachmentUiItem attachmentUiItem : ((MessageReaderViewContract$State) collectAsStateWithLifecycle.getValue()).attachments) {
            gapComposer.startMovableGroup(-1992567391, new AttachmentId(attachmentUiItem.mo1039getIdc0oeyA()));
            boolean changed2 = gapComposer.changed(messageContainerView.getAttachmentViewInfoMapper()) | gapComposer.changed(attachmentUiItem);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                ((DefaultAttachmentViewInfoMapper) messageContainerView.getAttachmentViewInfoMapper()).getClass();
                Object attachmentViewInfo = new AttachmentViewInfo(attachmentUiItem.getMimeType(), attachmentUiItem.getFilename(), attachmentUiItem.getSize(), Uri.parse(attachmentUiItem.mo1039getIdc0oeyA()), (attachmentUiItem instanceof AttachmentUiItem.InlinedImage) || (attachmentUiItem instanceof AttachmentUiItem.InlinedFile), (Part) attachmentUiItem.getPart(), attachmentUiItem.getDownloaded());
                gapComposer.updateRememberedValue(attachmentViewInfo);
                rememberedValue3 = attachmentViewInfo;
            }
            Object obj3 = (AttachmentViewInfo) rememberedValue3;
            boolean changedInstance2 = gapComposer.changedInstance(messageContainerView) | gapComposer.changedInstance(obj3);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue4 == obj) {
                rememberedValue4 = new Regex$$ExternalSyntheticLambda1(26, messageContainerView, obj3);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Function0 function02 = (Function0) rememberedValue4;
            boolean changed3 = gapComposer.changed(attachmentUiItem) | gapComposer.changedInstance(messageContainerView) | gapComposer.changedInstance(obj3);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changed3 || rememberedValue5 == obj) {
                rememberedValue5 = new ConnectPlan$$ExternalSyntheticLambda0(attachmentUiItem, messageContainerView, obj3, 13);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            AttachmentCardKt.AttachmentCard(attachmentUiItem, function02, (Function0) rememberedValue5, null, gapComposer, 0);
            gapComposer.end(false);
        }
        gapComposer.end(false);
        gapComposer.end(true);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        Http2Connection.ReaderRunnable readerRunnable = new Http2Connection.ReaderRunnable(20, this, new StringQualifier("MessageView"));
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.displayHtml$delegate = ResultKt.lazy(lazyThreadSafetyMode, readerRunnable);
        final int i = 0;
        this.webViewConfigProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.messageview.MessageContainerView$special$$inlined$inject$default$2
            public final /* synthetic */ MessageContainerView $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                MessageContainerView messageContainerView = this.$this_inject;
                switch (i2) {
                    case 0:
                        return ViewSizeResolver.CC.m(WebViewConfigProvider.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(ClipboardManager.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 2:
                        return ViewSizeResolver.CC.m(LinkTextHandler.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 3:
                        return ViewSizeResolver.CC.m(FeatureThemeProvider.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(AttachmentViewInfoMapper.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
        final int i2 = 1;
        this.clipboardManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.messageview.MessageContainerView$special$$inlined$inject$default$2
            public final /* synthetic */ MessageContainerView $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                MessageContainerView messageContainerView = this.$this_inject;
                switch (i22) {
                    case 0:
                        return ViewSizeResolver.CC.m(WebViewConfigProvider.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(ClipboardManager.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 2:
                        return ViewSizeResolver.CC.m(LinkTextHandler.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 3:
                        return ViewSizeResolver.CC.m(FeatureThemeProvider.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(AttachmentViewInfoMapper.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
        final int i3 = 2;
        this.linkTextHandler$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.messageview.MessageContainerView$special$$inlined$inject$default$2
            public final /* synthetic */ MessageContainerView $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                MessageContainerView messageContainerView = this.$this_inject;
                switch (i22) {
                    case 0:
                        return ViewSizeResolver.CC.m(WebViewConfigProvider.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(ClipboardManager.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 2:
                        return ViewSizeResolver.CC.m(LinkTextHandler.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 3:
                        return ViewSizeResolver.CC.m(FeatureThemeProvider.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(AttachmentViewInfoMapper.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
        final int i4 = 3;
        this.featureThemeProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.messageview.MessageContainerView$special$$inlined$inject$default$2
            public final /* synthetic */ MessageContainerView $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                MessageContainerView messageContainerView = this.$this_inject;
                switch (i22) {
                    case 0:
                        return ViewSizeResolver.CC.m(WebViewConfigProvider.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(ClipboardManager.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 2:
                        return ViewSizeResolver.CC.m(LinkTextHandler.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 3:
                        return ViewSizeResolver.CC.m(FeatureThemeProvider.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(AttachmentViewInfoMapper.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
        final int i5 = 4;
        this.attachmentViewInfoMapper$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.messageview.MessageContainerView$special$$inlined$inject$default$2
            public final /* synthetic */ MessageContainerView $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i5;
                MessageContainerView messageContainerView = this.$this_inject;
                switch (i22) {
                    case 0:
                        return ViewSizeResolver.CC.m(WebViewConfigProvider.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 1:
                        return ViewSizeResolver.CC.m(ClipboardManager.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 2:
                        return ViewSizeResolver.CC.m(LinkTextHandler.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    case 3:
                        return ViewSizeResolver.CC.m(FeatureThemeProvider.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(AttachmentViewInfoMapper.class, messageContainerView.getKoin().scopeRegistry.rootScope, (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
        this.attachmentViewMap = new LinkedHashMap();
        this.attachments = new LinkedHashMap();
    }

    private final AttachmentViewInfoMapper getAttachmentViewInfoMapper() {
        return (AttachmentViewInfoMapper) this.attachmentViewInfoMapper$delegate.getValue();
    }

    private final ClipboardManager getClipboardManager() {
        return (ClipboardManager) this.clipboardManager$delegate.getValue();
    }

    private final DisplayHtml getDisplayHtml() {
        return (DisplayHtml) this.displayHtml$delegate.getValue();
    }

    private final FeatureThemeProvider getFeatureThemeProvider() {
        return (FeatureThemeProvider) this.featureThemeProvider$delegate.getValue();
    }

    private final LinkTextHandler getLinkTextHandler() {
        return (LinkTextHandler) this.linkTextHandler$delegate.getValue();
    }

    private final WebViewConfigProvider getWebViewConfigProvider() {
        return (WebViewConfigProvider) this.webViewConfigProvider$delegate.getValue();
    }

    private final void setLoadPictures(boolean z) {
        MessageWebView messageWebView = this.messageContentView;
        if (messageWebView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageContentView");
            throw null;
        }
        try {
            messageWebView.getSettings().setBlockNetworkLoads(!z);
        } catch (SecurityException e) {
            Log.e(e, "Failed to unblock network loads. Missing INTERNET permission?", new Object[0]);
        }
        this.isShowingPictures = z;
    }

    public static void startActivityIfAvailable(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(context, R.string.error_activity_not_found, 1).show();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0075, code lost:
    
        if (kotlin.collections.CollectionsKt.contains(r8, r2) != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void createImageMenu(android.view.ContextMenu r7, java.lang.String r8) {
        /*
            r6 = this;
            if (r8 != 0) goto L4
            goto Lad
        L4:
            android.net.Uri r0 = android.net.Uri.parse(r8)
            r0.getClass()
            java.lang.String r1 = r0.getScheme()
            java.lang.String r2 = "cid"
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            r2 = 0
            if (r1 != 0) goto L1a
            r1 = r2
            goto L32
        L1a:
            com.fsck.k9.mailstore.AttachmentResolver r1 = r6.currentAttachmentResolver
            if (r1 == 0) goto Lae
            java.lang.String r3 = r0.getSchemeSpecificPart()
            java.util.Map r1 = r1.contentIdToAttachmentUriMap
            java.lang.Object r1 = r1.get(r3)
            android.net.Uri r1 = (android.net.Uri) r1
            java.util.LinkedHashMap r3 = r6.attachments
            java.lang.Object r1 = r3.get(r1)
            com.fsck.k9.mailstore.AttachmentViewInfo r1 = (com.fsck.k9.mailstore.AttachmentViewInfo) r1
        L32:
            r3 = 0
            if (r1 == 0) goto L37
            r4 = 1
            goto L38
        L37:
            r4 = r3
        L38:
            com.fsck.k9.ui.messageview.MessageContainerView$$ExternalSyntheticLambda2 r5 = new com.fsck.k9.ui.messageview.MessageContainerView$$ExternalSyntheticLambda2
            r5.<init>()
            if (r4 == 0) goto L46
            r8 = 2131887735(0x7f120677, float:1.9410085E38)
            r7.setHeaderTitle(r8)
            goto L49
        L46:
            r7.setHeaderTitle(r8)
        L49:
            android.content.Context r8 = r6.getContext()
            r1 = 2131887736(0x7f120678, float:1.9410088E38)
            java.lang.String r8 = r8.getString(r1)
            r1 = 5
            android.view.MenuItem r8 = r7.add(r3, r1, r1, r8)
            r8.setOnMenuItemClickListener(r5)
            if (r4 != 0) goto L77
            java.util.Set r8 = com.fsck.k9.ui.messageview.MessageContainerView.supportedDownloadUriSchemes
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.lang.String r0 = r0.getScheme()
            if (r0 == 0) goto L71
            java.util.Locale r1 = java.util.Locale.ROOT
            java.lang.String r2 = r0.toLowerCase(r1)
            r2.getClass()
        L71:
            boolean r8 = kotlin.collections.CollectionsKt.contains(r8, r2)
            if (r8 == 0) goto L98
        L77:
            if (r4 == 0) goto L85
            android.content.Context r8 = r6.getContext()
            r0 = 2131887734(0x7f120676, float:1.9410083E38)
            java.lang.String r8 = r8.getString(r0)
            goto L90
        L85:
            android.content.Context r8 = r6.getContext()
            r0 = 2131887733(0x7f120675, float:1.9410081E38)
            java.lang.String r8 = r8.getString(r0)
        L90:
            r0 = 6
            android.view.MenuItem r8 = r7.add(r3, r0, r0, r8)
            r8.setOnMenuItemClickListener(r5)
        L98:
            if (r4 != 0) goto Lad
            android.content.Context r6 = r6.getContext()
            r8 = 2131887732(0x7f120674, float:1.941008E38)
            java.lang.String r6 = r6.getString(r8)
            r8 = 7
            android.view.MenuItem r6 = r7.add(r3, r8, r8, r6)
            r6.setOnMenuItemClickListener(r5)
        Lad:
            return
        Lae:
            java.lang.String r6 = "Required value was null."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.messageview.MessageContainerView.createImageMenu(android.view.ContextMenu, java.lang.String):void");
    }

    public final void createLinkMenu(ContextMenu contextMenu, final WebView webView, final String str, boolean z) {
        if (str == null) {
            return;
        }
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.fsck.k9.ui.messageview.MessageContainerView$$ExternalSyntheticLambda0
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                MessageContainerView.m945$r8$lambda$aE33UeGbmjjxfQllH8019chtw(str, this, webView, menuItem);
                return true;
            }
        };
        contextMenu.setHeaderTitle(str);
        if (!StringsKt__StringsJVMKt.startsWith(str, "file:", false)) {
            contextMenu.add(0, 1, 1, getContext().getString(R.string.webview_contextmenu_link_view_action)).setOnMenuItemClickListener(onMenuItemClickListener);
        }
        contextMenu.add(0, 2, 2, getContext().getString(R.string.webview_contextmenu_link_share_action)).setOnMenuItemClickListener(onMenuItemClickListener);
        contextMenu.add(0, 3, 3, getContext().getString(R.string.webview_contextmenu_link_copy_action)).setOnMenuItemClickListener(onMenuItemClickListener);
        if (z) {
            contextMenu.add(0, 4, 4, getContext().getString(R.string.webview_contextmenu_link_text_copy_action)).setOnMenuItemClickListener(onMenuItemClickListener);
        }
    }

    public final void displayMessageViewContainer(MessageViewInfo messageViewInfo, boolean z, BiometricPrompt biometricPrompt, boolean z2, boolean z3, AttachmentViewCallback attachmentViewCallback, MessageReaderViewContract$ViewModel messageReaderViewContract$ViewModel) {
        String wrapMessageContent;
        messageViewInfo.getClass();
        String str = messageViewInfo.extraText;
        messageReaderViewContract$ViewModel.getClass();
        this.attachmentCallback = attachmentViewCallback;
        setLoadPictures(false);
        ViewGroup viewGroup = this.attachmentsContainer;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attachmentsContainer");
            throw null;
        }
        viewGroup.removeAllViews();
        this.currentHtmlText = null;
        this.currentAttachmentResolver = null;
        MessageWebView messageWebView = this.messageContentView;
        if (messageWebView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageContentView");
            throw null;
        }
        messageWebView.displayHtmlContentWithInlineAttachments$1("", null, null);
        View view = this.unsignedTextContainer;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unsignedTextContainer");
            throw null;
        }
        view.setVisibility(8);
        MaterialTextView materialTextView = this.unsignedText;
        if (materialTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unsignedText");
            throw null;
        }
        materialTextView.setText("");
        if (z) {
            DisplayHtml displayHtml = getDisplayHtml();
            String str2 = messageViewInfo.textPlainFormatted;
            str2.getClass();
            wrapMessageContent = displayHtml.wrapMessageContent(str2);
        } else {
            wrapMessageContent = messageViewInfo.text;
        }
        List<AttachmentViewInfo> list = messageViewInfo.attachments;
        LinkedHashMap linkedHashMap = this.attachments;
        if (list != null) {
            for (AttachmentViewInfo attachmentViewInfo : list) {
                linkedHashMap.put(attachmentViewInfo.internalUri, attachmentViewInfo);
            }
        }
        List<AttachmentViewInfo> list2 = messageViewInfo.extraAttachments;
        if (list2 != null) {
            for (AttachmentViewInfo attachmentViewInfo2 : list2) {
                linkedHashMap.put(attachmentViewInfo2.internalUri, attachmentViewInfo2);
            }
        }
        ViewGroup viewGroup2 = this.attachmentsContainer;
        if (viewGroup2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attachmentsContainer");
            throw null;
        }
        Context context = getContext();
        context.getClass();
        ComposeView composeView = new ComposeView(context, null, 0, 6, null);
        composeView.setViewCompositionStrategy(AndroidFontResourceLoader.INSTANCE);
        composeView.setContent(new ComposableLambdaImpl(-963751628, new MessageContainerView$$ExternalSyntheticLambda1(this, messageReaderViewContract$ViewModel, messageViewInfo), true));
        viewGroup2.addView(composeView);
        if (wrapMessageContent != null && !this.isShowingPictures && !z) {
            Matcher matcher = Utility.IMG_PATTERN.matcher(wrapMessageContent);
            while (matcher.find()) {
                String group = matcher.group(1);
                if (group.equals("http") || group.equals("https")) {
                    Log.d("External images found", new Object[0]);
                    if (z2) {
                        setLoadPictures(true);
                    } else {
                        this.hasHiddenExternalImages = true;
                    }
                }
            }
            Log.d("No external images.", new Object[0]);
        }
        if (wrapMessageContent == null) {
            DisplayHtml displayHtml2 = getDisplayHtml();
            String string = getContext().getString(R.string.webview_empty_message);
            string.getClass();
            displayHtml2.getClass();
            wrapMessageContent = displayHtml2.wrapMessageContent("<div style=\"text-align:center; color: grey;\">" + ((Object) string) + "</div>");
        }
        AttachmentResolver attachmentResolver = messageViewInfo.attachmentResolver;
        attachmentResolver.getClass();
        MessageContainerView$displayMessageViewContainer$3 messageContainerView$displayMessageViewContainer$3 = new MessageContainerView$displayMessageViewContainer$3(biometricPrompt);
        this.currentHtmlText = wrapMessageContent;
        this.currentAttachmentResolver = attachmentResolver;
        MessageWebView messageWebView2 = this.messageContentView;
        if (messageWebView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageContentView");
            throw null;
        }
        messageWebView2.displayHtmlContentWithInlineAttachments$1(wrapMessageContent, attachmentResolver, messageContainerView$displayMessageViewContainer$3);
        if (str == null || str.length() == 0) {
            return;
        }
        View view2 = this.unsignedTextContainer;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unsignedTextContainer");
            throw null;
        }
        view2.setVisibility(0);
        View view3 = this.unsignedTextDivider;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unsignedTextDivider");
            throw null;
        }
        view3.setVisibility(z3 ? 8 : 0);
        MaterialTextView materialTextView2 = this.unsignedText;
        if (materialTextView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unsignedText");
            throw null;
        }
        materialTextView2.setText(str);
    }

    @Override // org.koin.core.component.KoinComponent
    public /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        contextMenu.getClass();
        view.getClass();
        onCreateContextMenu(contextMenu);
        WebView webView = (WebView) view;
        WebView.HitTestResult hitTestResult = webView.getHitTestResult();
        hitTestResult.getClass();
        int type = hitTestResult.getType();
        final int i = 1;
        final int i2 = 0;
        if (type == 2) {
            final String extra = hitTestResult.getExtra();
            if (extra == null) {
                return;
            }
            MenuItem.OnMenuItemClickListener onMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.fsck.k9.ui.messageview.MessageContainerView$$ExternalSyntheticLambda3
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem) {
                    int i3 = i;
                    MessageContainerView messageContainerView = this;
                    String str = extra;
                    switch (i3) {
                        case 0:
                            MessageContainerView.m944$r8$lambda$O6l_YERSvLdjg5Ywm1lazpxi0(str, messageContainerView, menuItem);
                            break;
                        default:
                            MessageContainerView.$r8$lambda$mMqPJ8nJo_am53VjX14GTEYAr_w(str, messageContainerView, menuItem);
                            break;
                    }
                    return true;
                }
            };
            contextMenu.setHeaderTitle(extra);
            contextMenu.add(0, 1, 0, getContext().getString(R.string.webview_contextmenu_phone_call_action)).setOnMenuItemClickListener(onMenuItemClickListener);
            contextMenu.add(0, 2, 1, getContext().getString(R.string.webview_contextmenu_phone_save_action)).setOnMenuItemClickListener(onMenuItemClickListener);
            contextMenu.add(0, 3, 2, getContext().getString(R.string.webview_contextmenu_phone_copy_action)).setOnMenuItemClickListener(onMenuItemClickListener);
            return;
        }
        if (type == 4) {
            final String extra2 = hitTestResult.getExtra();
            if (extra2 == null) {
                return;
            }
            MenuItem.OnMenuItemClickListener onMenuItemClickListener2 = new MenuItem.OnMenuItemClickListener() { // from class: com.fsck.k9.ui.messageview.MessageContainerView$$ExternalSyntheticLambda3
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem) {
                    int i3 = i2;
                    MessageContainerView messageContainerView = this;
                    String str = extra2;
                    switch (i3) {
                        case 0:
                            MessageContainerView.m944$r8$lambda$O6l_YERSvLdjg5Ywm1lazpxi0(str, messageContainerView, menuItem);
                            break;
                        default:
                            MessageContainerView.$r8$lambda$mMqPJ8nJo_am53VjX14GTEYAr_w(str, messageContainerView, menuItem);
                            break;
                    }
                    return true;
                }
            };
            contextMenu.setHeaderTitle(extra2);
            contextMenu.add(0, 1, 0, getContext().getString(R.string.webview_contextmenu_email_send_action)).setOnMenuItemClickListener(onMenuItemClickListener2);
            contextMenu.add(0, 2, 1, getContext().getString(R.string.webview_contextmenu_email_save_action)).setOnMenuItemClickListener(onMenuItemClickListener2);
            contextMenu.add(0, 3, 2, getContext().getString(R.string.webview_contextmenu_email_copy_action)).setOnMenuItemClickListener(onMenuItemClickListener2);
            return;
        }
        if (type == 5) {
            createImageMenu(contextMenu, hitTestResult.getExtra());
            return;
        }
        if (type == 7) {
            createLinkMenu(contextMenu, webView, hitTestResult.getExtra(), true);
            return;
        }
        if (type != 8) {
            return;
        }
        String extra3 = hitTestResult.getExtra();
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
            return;
        }
        Message obtainMessage = new Handler(myLooper).obtainMessage();
        obtainMessage.getClass();
        webView.requestFocusNodeHref(obtainMessage);
        String string = obtainMessage.getData().getString("url");
        createImageMenu(contextMenu, extra3);
        createLinkMenu(contextMenu, webView, string, false);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        LayoutInflater.from(getContext()).getClass();
        View findViewById = findViewById(R.id.message_content);
        MessageWebView messageWebView = (MessageWebView) findViewById;
        messageWebView.isInEditMode();
        WebViewConfigProvider webViewConfigProvider = getWebViewConfigProvider();
        messageWebView.configure(webViewConfigProvider.createWebViewConfig(webViewConfigProvider.themeManager.getMessageViewTheme()));
        messageWebView.setOnCreateContextMenuListener(this);
        messageWebView.setVisibility(0);
        findViewById.getClass();
        this.messageContentView = (MessageWebView) findViewById;
        View findViewById2 = findViewById(R.id.attachments_container);
        findViewById2.getClass();
        this.attachmentsContainer = (ViewGroup) findViewById2;
        View findViewById3 = findViewById(R.id.message_unsigned_container);
        findViewById3.getClass();
        this.unsignedTextContainer = findViewById3;
        View findViewById4 = findViewById(R.id.message_unsigned_divider);
        findViewById4.getClass();
        this.unsignedTextDivider = findViewById4;
        View findViewById5 = findViewById(R.id.message_unsigned_text);
        findViewById5.getClass();
        this.unsignedText = (MaterialTextView) findViewById5;
    }

    public final void showPictures() {
        setLoadPictures(true);
        String str = this.currentHtmlText;
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        MessageWebView messageWebView = this.messageContentView;
        if (messageWebView != null) {
            messageWebView.displayHtmlContentWithInlineAttachments$1(str, this.currentAttachmentResolver, null);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("messageContentView");
            throw null;
        }
    }
}
