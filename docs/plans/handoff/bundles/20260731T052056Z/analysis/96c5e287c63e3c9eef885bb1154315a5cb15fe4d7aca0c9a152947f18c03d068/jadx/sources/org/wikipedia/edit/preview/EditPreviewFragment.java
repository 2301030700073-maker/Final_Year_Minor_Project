package org.wikipedia.edit.preview;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.HintHandler;
import androidx.room.Room;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import java.util.List;
import kotlin.Metadata;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.serialization.json.JsonImpl;
import kotlinx.serialization.json.JsonObject;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Okio__OkioKt;
import okio.internal.DefaultSocket;
import org.wikipedia.R;
import org.wikipedia.bridge.CommunicationBridge;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.okhttp.OkHttpWebViewClient;
import org.wikipedia.diff.ArticleEditDetailsActivity;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.LinkHandler;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda18;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.PageViewModel;
import org.wikipedia.page.references.PageReferences;
import org.wikipedia.page.references.ReferenceDialog;
import org.wikipedia.util.log.L;
import org.wikipedia.views.ObservableWebView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u0006\u0007B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lorg/wikipedia/edit/preview/EditPreviewFragment;", "Landroidx/fragment/app/Fragment;", "Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;", "Lorg/wikipedia/page/references/ReferenceDialog$Callback;", "<init>", "()V", "Callback", "EditLinkHandler", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EditPreviewFragment extends Fragment implements CommunicationBridge.CommunicationBridgeListener, ReferenceDialog.Callback {
    public DefaultSocket _binding;
    public CommunicationBridge bridge;
    public EditLinkHandler linkHandler;
    public PageReferences references;
    public final PageViewModel model = new PageViewModel();
    public final boolean isPreview = true;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        PageTitle getParentPageTitle();

        boolean isNewPage();

        void showProgressBar$1(boolean z);
    }

    public final Callback callback() {
        Object activity;
        if (Callback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (Callback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (Callback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = Callback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        activity.getClass();
        return (Callback) activity;
    }

    @Override // org.wikipedia.page.references.ReferenceDialog.Callback
    public final LinkHandler getLinkHandler() {
        EditLinkHandler editLinkHandler = this.linkHandler;
        if (editLinkHandler != null) {
            return editLinkHandler;
        }
        Intrinsics.throwUninitializedPropertyAccessException("linkHandler");
        throw null;
    }

    @Override // org.wikipedia.bridge.CommunicationBridge.CommunicationBridgeListener
    public final int getMessageCardHeight() {
        return 0;
    }

    @Override // org.wikipedia.bridge.CommunicationBridge.CommunicationBridgeListener
    public final PageViewModel getModel() {
        return this.model;
    }

    @Override // org.wikipedia.page.references.ReferenceDialog.Callback
    public final List getReferencesGroup() {
        PageReferences pageReferences = this.references;
        if (pageReferences != null) {
            return pageReferences.referencesGroup;
        }
        Intrinsics.throwUninitializedPropertyAccessException("references");
        throw null;
    }

    @Override // org.wikipedia.page.references.ReferenceDialog.Callback
    public final int getSelectedReferenceIndex() {
        PageReferences pageReferences = this.references;
        if (pageReferences != null) {
            return pageReferences.selectedIndex;
        }
        Intrinsics.throwUninitializedPropertyAccessException("references");
        throw null;
    }

    @Override // org.wikipedia.bridge.CommunicationBridge.CommunicationBridgeListener
    public final int getToolbarMargin() {
        return 0;
    }

    @Override // org.wikipedia.bridge.CommunicationBridge.CommunicationBridgeListener
    public final ObservableWebView getWebView() {
        DefaultSocket defaultSocket = this._binding;
        defaultSocket.getClass();
        return (ObservableWebView) defaultSocket.source;
    }

    public final void hide() {
        DefaultSocket defaultSocket = this._binding;
        defaultSocket.getClass();
        FrameLayout frameLayout = (FrameLayout) defaultSocket.closeBits;
        frameLayout.getClass();
        frameLayout.setVisibility(8);
        requireActivity().invalidateOptionsMenu();
    }

    public final boolean isActive() {
        DefaultSocket defaultSocket = this._binding;
        defaultSocket.getClass();
        return ((FrameLayout) defaultSocket.closeBits).getVisibility() == 0;
    }

    @Override // org.wikipedia.bridge.CommunicationBridge.CommunicationBridgeListener
    /* renamed from: isPreview, reason: from getter */
    public final boolean getIsPreview() {
        return this.isPreview;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.fragment_preview_edit, viewGroup, false);
        FrameLayout frameLayout = (FrameLayout) inflate;
        int i2 = R.id.edit_preview_webview;
        ObservableWebView observableWebView = (ObservableWebView) Room.findChildViewById(inflate, R.id.edit_preview_webview);
        if (observableWebView != null) {
            i2 = R.id.licenseText;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.licenseText);
            if (textView != null) {
                this._binding = new DefaultSocket(frameLayout, frameLayout, observableWebView, textView, 16);
                this.bridge = new CommunicationBridge(this);
                PageTitle parentPageTitle = callback().getParentPageTitle();
                PageViewModel pageViewModel = this.model;
                pageViewModel.title = parentPageTitle;
                pageViewModel.curEntry = new HistoryEntry(2, parentPageTitle);
                this.linkHandler = new EditLinkHandler(requireContext());
                DefaultSocket defaultSocket = this._binding;
                defaultSocket.getClass();
                ObservableWebView observableWebView2 = (ObservableWebView) defaultSocket.source;
                AppCompatActivity requireActivity = requireActivity();
                TypedValue typedValue = new TypedValue();
                final int i3 = 1;
                if (!requireActivity.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
                    return null;
                }
                observableWebView2.setBackgroundColor(typedValue.data);
                DefaultSocket defaultSocket2 = this._binding;
                defaultSocket2.getClass();
                ((ObservableWebView) defaultSocket2.source).setWebViewClient(new OkHttpWebViewClient() { // from class: org.wikipedia.edit.preview.EditPreviewFragment$initWebView$1
                    @Override // org.wikipedia.dataclient.okhttp.OkHttpWebViewClient
                    public final LinkHandler getLinkHandler() {
                        return EditPreviewFragment.this.getLinkHandler();
                    }

                    @Override // org.wikipedia.dataclient.okhttp.OkHttpWebViewClient
                    public final PageViewModel getModel() {
                        return EditPreviewFragment.this.model;
                    }

                    @Override // android.webkit.WebViewClient
                    public final void onPageFinished(WebView webView, String str) {
                        webView.getClass();
                        str.getClass();
                        super.onPageFinished(webView, str);
                        EditPreviewFragment editPreviewFragment = EditPreviewFragment.this;
                        if (editPreviewFragment.isAdded()) {
                            CommunicationBridge communicationBridge = editPreviewFragment.bridge;
                            if (communicationBridge == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            communicationBridge.isMetadataReady = true;
                            communicationBridge.flushMessages();
                            CommunicationBridge communicationBridge2 = editPreviewFragment.bridge;
                            if (communicationBridge2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            editPreviewFragment._binding.getClass();
                            communicationBridge2.execute("pcs.c1.Page.setMargins({ top:'0px', bottom:'" + (Okio__OkioKt.roundedPxToDp(((TextView) r4.sink).getHeight()) + 16) + "px' })");
                            editPreviewFragment.callback().showProgressBar$1(false);
                            editPreviewFragment.requireActivity().invalidateOptionsMenu();
                        }
                    }
                });
                CommunicationBridge communicationBridge = this.bridge;
                if (communicationBridge == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bridge");
                    throw null;
                }
                communicationBridge.addListener("setup", new PageFragment$$ExternalSyntheticLambda18(1));
                CommunicationBridge communicationBridge2 = this.bridge;
                if (communicationBridge2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bridge");
                    throw null;
                }
                communicationBridge2.addListener("final_setup", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.edit.preview.EditPreviewFragment$$ExternalSyntheticLambda1
                    public final /* synthetic */ EditPreviewFragment f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
                    public final void onMessage(String str, JsonObject jsonObject) {
                        int i4 = i;
                        Object obj = null;
                        EditPreviewFragment editPreviewFragment = this.f$0;
                        switch (i4) {
                            case 0:
                                str.getClass();
                                if (editPreviewFragment.isAdded()) {
                                    CommunicationBridge communicationBridge3 = editPreviewFragment.bridge;
                                    if (communicationBridge3 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                        throw null;
                                    }
                                    communicationBridge3.isPcsReady = true;
                                    communicationBridge3.flushMessages();
                                    return;
                                }
                                return;
                            default:
                                str.getClass();
                                JsonImpl jsonImpl = JsonUtil.json;
                                String valueOf = String.valueOf(jsonObject);
                                if (valueOf.length() != 0) {
                                    try {
                                        JsonImpl jsonImpl2 = JsonUtil.json;
                                        jsonImpl2.getClass();
                                        obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                    } catch (Exception e) {
                                        L.w(e);
                                    }
                                }
                                PageReferences pageReferences = (PageReferences) obj;
                                if (pageReferences != null) {
                                    editPreviewFragment.references = pageReferences;
                                    if (pageReferences.referencesGroup.isEmpty()) {
                                        return;
                                    }
                                    FragmentManagerImpl childFragmentManager = editPreviewFragment.getChildFragmentManager();
                                    childFragmentManager.getClass();
                                    Okio__OkioKt.show(childFragmentManager, new ReferenceDialog());
                                    return;
                                }
                                return;
                        }
                    }
                });
                CommunicationBridge communicationBridge3 = this.bridge;
                if (communicationBridge3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bridge");
                    throw null;
                }
                communicationBridge3.addListener("link", getLinkHandler());
                CommunicationBridge communicationBridge4 = this.bridge;
                if (communicationBridge4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bridge");
                    throw null;
                }
                communicationBridge4.addListener("image", new PageFragment$$ExternalSyntheticLambda18(2));
                CommunicationBridge communicationBridge5 = this.bridge;
                if (communicationBridge5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bridge");
                    throw null;
                }
                communicationBridge5.addListener("media", new PageFragment$$ExternalSyntheticLambda18(3));
                CommunicationBridge communicationBridge6 = this.bridge;
                if (communicationBridge6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bridge");
                    throw null;
                }
                communicationBridge6.addListener("reference", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.edit.preview.EditPreviewFragment$$ExternalSyntheticLambda1
                    public final /* synthetic */ EditPreviewFragment f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
                    public final void onMessage(String str, JsonObject jsonObject) {
                        int i4 = i3;
                        Object obj = null;
                        EditPreviewFragment editPreviewFragment = this.f$0;
                        switch (i4) {
                            case 0:
                                str.getClass();
                                if (editPreviewFragment.isAdded()) {
                                    CommunicationBridge communicationBridge32 = editPreviewFragment.bridge;
                                    if (communicationBridge32 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                        throw null;
                                    }
                                    communicationBridge32.isPcsReady = true;
                                    communicationBridge32.flushMessages();
                                    return;
                                }
                                return;
                            default:
                                str.getClass();
                                JsonImpl jsonImpl = JsonUtil.json;
                                String valueOf = String.valueOf(jsonObject);
                                if (valueOf.length() != 0) {
                                    try {
                                        JsonImpl jsonImpl2 = JsonUtil.json;
                                        jsonImpl2.getClass();
                                        obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                    } catch (Exception e) {
                                        L.w(e);
                                    }
                                }
                                PageReferences pageReferences = (PageReferences) obj;
                                if (pageReferences != null) {
                                    editPreviewFragment.references = pageReferences;
                                    if (pageReferences.referencesGroup.isEmpty()) {
                                        return;
                                    }
                                    FragmentManagerImpl childFragmentManager = editPreviewFragment.getChildFragmentManager();
                                    childFragmentManager.getClass();
                                    Okio__OkioKt.show(childFragmentManager, new ReferenceDialog());
                                    return;
                                }
                                return;
                        }
                    }
                });
                DefaultSocket defaultSocket3 = this._binding;
                defaultSocket3.getClass();
                ((FrameLayout) defaultSocket3.closeBits).setVisibility(8);
                DefaultSocket defaultSocket4 = this._binding;
                defaultSocket4.getClass();
                FrameLayout frameLayout2 = (FrameLayout) defaultSocket4.socket;
                frameLayout2.getClass();
                return frameLayout2;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        DefaultSocket defaultSocket = this._binding;
        defaultSocket.getClass();
        ((ObservableWebView) defaultSocket.source).clearAllListeners();
        DefaultSocket defaultSocket2 = this._binding;
        defaultSocket2.getClass();
        ViewParent parent = ((ObservableWebView) defaultSocket2.source).getParent();
        parent.getClass();
        DefaultSocket defaultSocket3 = this._binding;
        defaultSocket3.getClass();
        ((ViewGroup) parent).removeView((ObservableWebView) defaultSocket3.source);
        CommunicationBridge communicationBridge = this.bridge;
        if (communicationBridge == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        communicationBridge.cleanup();
        this._binding = null;
        this.mCalled = true;
    }

    public final void showPreview(PageTitle pageTitle, String str) {
        pageTitle.getClass();
        str.getClass();
        Window window = requireActivity().getWindow();
        window.getClass();
        HintHandler hintHandler = new HintHandler(window.getDecorView());
        int i = Build.VERSION.SDK_INT;
        (i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
        callback().showProgressBar$1(true);
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this), null, new EditPreviewFragment$showPreview$2(this, pageTitle, str, null), 2);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EditLinkHandler extends LinkHandler {
        public EditLinkHandler(Context context) {
            super(context);
        }

        @Override // org.wikipedia.page.LinkHandler
        public final WikiSite getWikiSite() {
            PageTitle pageTitle = (PageTitle) EditPreviewFragment.this.model.title;
            pageTitle.getClass();
            return pageTitle.wikiSite;
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onDiffLinkClicked(final PageTitle pageTitle, final long j) {
            final EditPreviewFragment editPreviewFragment = EditPreviewFragment.this;
            showLeavingEditDialog(new Runnable() { // from class: org.wikipedia.edit.preview.EditPreviewFragment$EditLinkHandler$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ByteString.Companion companion = ArticleEditDetailsActivity.Companion;
                    EditPreviewFragment editPreviewFragment2 = EditPreviewFragment.this;
                    editPreviewFragment2.startActivity(ByteString.Companion.newIntent$default(companion, editPreviewFragment2.requireContext(), pageTitle, -1, -1L, j, null, 32), null);
                }
            });
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onExternalLinkClicked(Uri uri) {
            showLeavingEditDialog(new Processor$$ExternalSyntheticLambda2(21, this, uri));
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onInternalLinkClicked(PageTitle pageTitle) {
            showLeavingEditDialog(new Processor$$ExternalSyntheticLambda1(EditPreviewFragment.this, this, pageTitle, 8));
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onPageLinkClicked(String str, String str2) {
            str2.getClass();
        }

        public final void showLeavingEditDialog(Runnable runnable) {
            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(EditPreviewFragment.this.requireActivity(), 0);
            materialAlertDialogBuilder.setMessage(R.string.dialog_message_leaving_edit);
            materialAlertDialogBuilder.setPositiveButton(R.string.dialog_message_leaving_edit_leave, new PageFragment$$ExternalSyntheticLambda28(4, runnable));
            materialAlertDialogBuilder.setNegativeButton(R.string.dialog_message_leaving_edit_stay, (DialogInterface.OnClickListener) null);
            materialAlertDialogBuilder.show();
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onMediaLinkClicked(PageTitle pageTitle) {
        }
    }

    public final void showPreview(String str) {
        DefaultSocket defaultSocket = this._binding;
        defaultSocket.getClass();
        ObservableWebView observableWebView = (ObservableWebView) defaultSocket.source;
        ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
        PageTitle pageTitle = (PageTitle) this.model.title;
        pageTitle.getClass();
        String restBasePath = ServiceFactory.getRestBasePath(pageTitle.wikiSite);
        if (str == null) {
            str = "";
        }
        observableWebView.loadDataWithBaseURL(restBasePath, str, "text/html", "UTF-8", null);
        DefaultSocket defaultSocket2 = this._binding;
        defaultSocket2.getClass();
        FrameLayout frameLayout = (FrameLayout) defaultSocket2.closeBits;
        frameLayout.getClass();
        frameLayout.setVisibility(0);
        requireActivity().invalidateOptionsMenu();
    }
}
