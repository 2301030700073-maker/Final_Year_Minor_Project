package com.beetstra.jutf7;

import android.content.IntentSender;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.ArrayMap;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LegacySavedStateHandleController$OnRecreation;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.AsyncTaskLoader;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.room.TransactionExecutor;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import androidx.transition.Transition;
import androidx.viewpager.widget.ViewPager;
import androidx.work.Data;
import androidx.work.OperationKt;
import androidx.work.SystemClock;
import androidx.work.impl.Processor;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.StopWorkRunnable;
import app.k9mail.feature.account.common.domain.entity.AuthorizationState;
import app.k9mail.feature.account.oauth.domain.entity.AuthorizationResult;
import app.k9mail.ui.utils.linearlayoutmanager.LayoutManager;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DataCacheKey;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.DiskCacheStrategy$2;
import com.bumptech.glide.load.engine.EngineJob;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.SourceGenerator;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.GroupedLinkedMap$LinkedEntry;
import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import com.bumptech.glide.load.engine.cache.DiskCacheWriteLocker$WriteLock;
import com.bumptech.glide.load.engine.cache.DiskCacheWriteLocker$WriteLockPool;
import com.bumptech.glide.load.engine.cache.SafeKeyGenerator$PoolableDigestContainer;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.bitmap.BitmapEncoder;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.provider.ResourceDecoderRegistry$Entry;
import com.bumptech.glide.util.ExceptionPassthroughInputStream;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.MultiClassKey;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.FactoryPools;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.activity.MessageCompose$13$1;
import com.fsck.k9.activity.MessageCompose$MessageComposeMessageLoaderCallback$1;
import com.fsck.k9.activity.MessageLoaderHelper;
import com.fsck.k9.activity.compose.RecipientMvpView;
import com.fsck.k9.activity.misc.Attachment;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda0;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.helper.FileHelper;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.MessageViewInfo;
import com.fsck.k9.message.Attachment;
import com.fsck.k9.ui.message.LocalMessageExtractorLoader;
import com.fsck.k9.ui.messageview.MessageViewContainerFragment;
import com.google.android.material.textview.MaterialTextView;
import com.jcraft.jzlib.Deflate;
import j$.nio.channels.DesugarChannels;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.SafeContinuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.openid.appauth.AuthState;
import net.openid.appauth.AuthorizationException;
import net.openid.appauth.AuthorizationResponse;
import net.openid.appauth.AuthorizationService;
import net.openid.appauth.TokenResponse;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.json.JSONException;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Functions;
import org.jsoup.safety.Cleaner;
import org.jsoup.safety.Safelist;
import org.openintents.openpgp.util.OpenPgpIntentStarter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Base64Util implements OnApplyWindowInsetsListener, AuthorizationService.TokenResponseCallback, DataFetcher.DataCallback, ResourceEncoder, Downsampler.DecodeCallbacks, MessageLoaderHelper.MessageLoaderCallbacks, LoaderManager.LoaderCallbacks {
    public final /* synthetic */ int $r8$classId;
    public Object alphabet;
    public Object inverseAlphabet;

    public Base64Util(int i) {
        this.$r8$classId = i;
        switch (i) {
            case OffsetKt.Horizontal /* 15 */:
                this.alphabet = new GroupedLinkedMap$LinkedEntry(null);
                this.inverseAlphabet = new HashMap();
                break;
            case 16:
                this.alphabet = new HashMap();
                this.inverseAlphabet = new DiskCacheWriteLocker$WriteLockPool(0);
                break;
            case 17:
                this.alphabet = new LruCache(1000L);
                this.inverseAlphabet = FactoryPools.threadSafe(10, new Transition.AnonymousClass1());
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            default:
                this.inverseAlphabet = ArraysKt___ArraysKt.toSet(new String[]{"id", "class", "dir", "lang", "style", "alink", "background", "bgcolor", "link", "text", "vlink"});
                Safelist safelist = new Safelist();
                safelist.addTags("a", "b", "blockquote", "br", "caption", "cite", "code", "col", "colgroup", "dd", "div", "dl", "dt", "em", "h1", "h2", "h3", "h4", "h5", "h6", "i", "img", "li", "ol", "p", "pre", "q", "small", "span", "strike", "strong", "sub", "sup", "table", "tbody", "td", "tfoot", "th", "thead", "tr", "u", "ul");
                safelist.addAttributes("a", "href", "title");
                safelist.addAttributes("blockquote", "cite");
                safelist.addAttributes("col", "span", "width");
                safelist.addAttributes("colgroup", "span", "width");
                safelist.addAttributes("img", "align", "alt", "height", "src", "title", "width");
                safelist.addAttributes("ol", "start", "type");
                safelist.addAttributes("q", "cite");
                safelist.addAttributes("table", "summary", "width");
                safelist.addAttributes("td", "abbr", "axis", "colspan", "rowspan", "width");
                safelist.addAttributes("th", "abbr", "axis", "colspan", "rowspan", "scope", "width");
                safelist.addAttributes("ul", "type");
                safelist.addProtocols("a", "href", "ftp", "http", "https", "mailto");
                safelist.addProtocols("blockquote", "cite", "http", "https");
                safelist.addProtocols("cite", "cite", "http", "https");
                safelist.addProtocols("img", "src", "http", "https");
                safelist.addProtocols("q", "cite", "http", "https");
                safelist.addTags("font", "hr", "ins", "del", "center", "map", "area", "title", "tt", "kbd", "samp", "var", "style", "s");
                safelist.addAttributes("font", "color", "face", "size");
                safelist.addAttributes("a", "name");
                safelist.addAttributes("div", "align");
                safelist.addAttributes("table", "align", "background", "bgcolor", "border", "cellpadding", "cellspacing", "width");
                safelist.addAttributes("tr", "align", "background", "bgcolor", "valign");
                safelist.addAttributes("th", "align", "background", "bgcolor", "colspan", "headers", "height", "nowrap", "rowspan", "scope", "sorted", "valign", "width");
                safelist.addAttributes("td", "align", "background", "bgcolor", "colspan", "headers", "height", "nowrap", "rowspan", "scope", "valign", "width");
                safelist.addAttributes("map", "name");
                safelist.addAttributes("area", "shape", "coords", "href", "alt");
                safelist.addProtocols("area", "href", "http", "https");
                safelist.addAttributes("img", "usemap");
                safelist.addAttributes(":all", "class", "style", "id", "dir");
                safelist.addProtocols("img", "src", "http", "https", "cid", "data");
                String[] strArr = {"ftp", "http", "https", "mailto"};
                Validate.notEmpty("a");
                Validate.notEmpty("href");
                Safelist.TagName valueOf = Safelist.TagName.valueOf("a");
                Safelist.AttributeKey attributeKey = new Safelist.AttributeKey(Functions.lowerCase("href"));
                HashMap hashMap = safelist.protocols;
                Validate.isTrue("Cannot remove a protocol that is not set.", hashMap.containsKey(valueOf));
                Map map = (Map) hashMap.get(valueOf);
                Validate.isTrue("Cannot remove a protocol that is not set.", map.containsKey(attributeKey));
                Set set = (Set) map.get(attributeKey);
                for (int i2 = 0; i2 < 4; i2++) {
                    String str = strArr[i2];
                    Validate.notEmpty(str);
                    set.remove(new Safelist.Protocol(str));
                }
                if (set.isEmpty()) {
                    map.remove(attributeKey);
                    if (map.isEmpty()) {
                        hashMap.remove(valueOf);
                    }
                }
                this.alphabet = new Cleaner(safelist);
                break;
            case 22:
                this.alphabet = new AtomicReference();
                this.inverseAlphabet = new ArrayMap(0);
                break;
            case 23:
                this.alphabet = new ArrayList();
                this.inverseAlphabet = new HashMap();
                break;
        }
    }

    public void addAttachmentView(Attachment attachment) {
        MessageCompose messageCompose = (MessageCompose) this.inverseAlphabet;
        messageCompose.attachmentsView.setVisibility(0);
        View inflate = messageCompose.getLayoutInflater().inflate(R.layout.message_compose_attachment, (ViewGroup) messageCompose.attachmentsView, false);
        ((HashMap) this.alphabet).put(attachment.uri, inflate);
        inflate.findViewById(R.id.attachment_delete).setOnClickListener(new MessageCompose$13$1(0, this, attachment));
        updateAttachmentView(attachment);
        messageCompose.attachmentsView.addView(inflate);
    }

    public void archiveMessages(List list) {
        int i = 0;
        ((MessagingController) this.alphabet).actOnMessagesGroupedByAccountAndFolder(list, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(20, new ArchiveOperations$$ExternalSyntheticLambda2(this, "archiveMessages", new ArchiveOperations$$ExternalSyntheticLambda0(this, i), i)));
    }

    public boolean block$room_runtime_release() {
        synchronized (this) {
            if (((AtomicBoolean) this.inverseAlphabet).get()) {
                return false;
            }
            ((AtomicInteger) this.alphabet).incrementAndGet();
            return true;
        }
    }

    public String calculateHexStringDigest(Key key) {
        String str;
        SafeKeyGenerator$PoolableDigestContainer safeKeyGenerator$PoolableDigestContainer = (SafeKeyGenerator$PoolableDigestContainer) ((ImapSync) this.inverseAlphabet).acquire();
        try {
            key.updateDiskCacheKey(safeKeyGenerator$PoolableDigestContainer.messageDigest);
            byte[] digest = safeKeyGenerator$PoolableDigestContainer.messageDigest.digest();
            char[] cArr = Util.SHA_256_CHARS;
            synchronized (cArr) {
                for (int i = 0; i < digest.length; i++) {
                    byte b = digest[i];
                    int i2 = i * 2;
                    char[] cArr2 = Util.HEX_CHAR_ARRAY;
                    cArr[i2] = cArr2[(b & 255) >>> 4];
                    cArr[i2 + 1] = cArr2[b & 15];
                }
                str = new String(cArr);
            }
            return str;
        } finally {
            ((ImapSync) this.inverseAlphabet).release(safeKeyGenerator$PoolableDigestContainer);
        }
    }

    public Bundle consumeRestoredStateForKey(String str) {
        Bundle bundle;
        SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) this.alphabet;
        if (!savedStateRegistryImpl.isRestored) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You can 'consumeRestoredStateForKey' only after the corresponding component has moved to the 'CREATED' state");
            return null;
        }
        Bundle bundle2 = savedStateRegistryImpl.restoredState;
        if (bundle2 == null) {
            return null;
        }
        if (bundle2.containsKey(str)) {
            bundle = bundle2.getBundle(str);
            if (bundle == null) {
                OperationKt.keyOrValueNotFoundError(str);
                throw null;
            }
        } else {
            bundle = null;
        }
        bundle2.remove(str);
        if (bundle2.isEmpty()) {
            savedStateRegistryImpl.restoredState = null;
        }
        return bundle;
    }

    public boolean contains(WorkGenerationalId workGenerationalId) {
        boolean containsKey;
        synchronized (this.inverseAlphabet) {
            containsKey = ((Data.Builder) this.alphabet).values.containsKey(workGenerationalId);
        }
        return containsKey;
    }

    @Override // com.bumptech.glide.load.Encoder
    public boolean encode(Object obj, File file, Options options) {
        return ((BitmapEncoder) this.inverseAlphabet).encode(new BitmapResource(((BitmapDrawable) ((Resource) obj).get()).getBitmap(), (BitmapPool) this.alphabet), file, options);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        if (r9 == r5) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0057 A[Catch: IOException -> 0x002d, TryCatch #0 {IOException -> 0x002d, blocks: (B:12:0x0029, B:13:0x0066, B:19:0x0039, B:20:0x0051, B:22:0x0057, B:25:0x0069, B:27:0x006d, B:29:0x0070, B:30:0x0075, B:32:0x0040), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0069 A[Catch: IOException -> 0x002d, TryCatch #0 {IOException -> 0x002d, blocks: (B:12:0x0029, B:13:0x0066, B:19:0x0039, B:20:0x0051, B:22:0x0057, B:25:0x0069, B:27:0x006d, B:29:0x0070, B:30:0x0075, B:32:0x0040), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object fetchAutoconfig(okhttp3.HttpUrl r7, net.thunderbird.core.common.mail.EmailAddress r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof app.k9mail.autodiscovery.autoconfig.RealAutoconfigFetcher$fetchAutoconfig$1
            if (r0 == 0) goto L13
            r0 = r9
            app.k9mail.autodiscovery.autoconfig.RealAutoconfigFetcher$fetchAutoconfig$1 r0 = (app.k9mail.autodiscovery.autoconfig.RealAutoconfigFetcher$fetchAutoconfig$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.autodiscovery.autoconfig.RealAutoconfigFetcher$fetchAutoconfig$1 r0 = new app.k9mail.autodiscovery.autoconfig.RealAutoconfigFetcher$fetchAutoconfig$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L3d
            if (r1 == r4) goto L35
            if (r1 != r3) goto L2f
            okhttp3.HttpUrl r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.io.IOException -> L2d
            goto L66
        L2d:
            r6 = move-exception
            goto L76
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r2
        L35:
            net.thunderbird.core.common.mail.EmailAddress r8 = r0.L$1
            okhttp3.HttpUrl r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.io.IOException -> L2d
            goto L51
        L3d:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r6.alphabet     // Catch: java.io.IOException -> L2d
            androidx.work.Configuration$Builder r9 = (androidx.work.Configuration.Builder) r9     // Catch: java.io.IOException -> L2d
            r0.L$0 = r7     // Catch: java.io.IOException -> L2d
            r0.L$1 = r8     // Catch: java.io.IOException -> L2d
            r0.label = r4     // Catch: java.io.IOException -> L2d
            java.lang.Object r9 = r9.fetch(r7, r0)     // Catch: java.io.IOException -> L2d
            if (r9 != r5) goto L51
            goto L65
        L51:
            app.k9mail.autodiscovery.autoconfig.HttpFetchResult r9 = (app.k9mail.autodiscovery.autoconfig.HttpFetchResult) r9     // Catch: java.io.IOException -> L2d
            boolean r1 = r9 instanceof app.k9mail.autodiscovery.autoconfig.HttpFetchResult.SuccessResponse     // Catch: java.io.IOException -> L2d
            if (r1 == 0) goto L69
            app.k9mail.autodiscovery.autoconfig.HttpFetchResult$SuccessResponse r9 = (app.k9mail.autodiscovery.autoconfig.HttpFetchResult.SuccessResponse) r9     // Catch: java.io.IOException -> L2d
            r0.L$0 = r7     // Catch: java.io.IOException -> L2d
            r0.L$1 = r2     // Catch: java.io.IOException -> L2d
            r0.label = r3     // Catch: java.io.IOException -> L2d
            java.lang.Object r9 = r6.parseSettings(r9, r8, r7, r0)     // Catch: java.io.IOException -> L2d
            if (r9 != r5) goto L66
        L65:
            return r5
        L66:
            app.k9mail.autodiscovery.api.AutoDiscoveryResult r9 = (app.k9mail.autodiscovery.api.AutoDiscoveryResult) r9     // Catch: java.io.IOException -> L2d
            return r9
        L69:
            boolean r6 = r9 instanceof app.k9mail.autodiscovery.autoconfig.HttpFetchResult.ErrorResponse     // Catch: java.io.IOException -> L2d
            if (r6 == 0) goto L70
            app.k9mail.autodiscovery.api.AutoDiscoveryResult$NoUsableSettingsFound r6 = app.k9mail.autodiscovery.api.AutoDiscoveryResult.NoUsableSettingsFound.INSTANCE     // Catch: java.io.IOException -> L2d
            return r6
        L70:
            org.jsoup.SerializationException r6 = new org.jsoup.SerializationException     // Catch: java.io.IOException -> L2d
            r6.<init>()     // Catch: java.io.IOException -> L2d
            throw r6     // Catch: java.io.IOException -> L2d
        L76:
            java.lang.Object[] r8 = new java.lang.Object[r4]
            r9 = 0
            r8[r9] = r7
            java.lang.String r7 = "Error fetching Autoconfig from URL: %s"
            net.thunderbird.core.logging.legacy.Log.d(r6, r7, r8)
            app.k9mail.autodiscovery.api.AutoDiscoveryResult$NetworkError r7 = new app.k9mail.autodiscovery.api.AutoDiscoveryResult$NetworkError
            r7.<init>(r6)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beetstra.jutf7.Base64Util.fetchAutoconfig(okhttp3.HttpUrl, net.thunderbird.core.common.mail.EmailAddress, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public View findOneViewWithinBoundFlags(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int paddingRight;
        View childAt;
        int decoratedLeft;
        int i6;
        int decoratedRight;
        int i7;
        Deflate.Config config = (Deflate.Config) this.inverseAlphabet;
        LayoutManager.AnonymousClass1 anonymousClass1 = (LayoutManager.AnonymousClass1) this.alphabet;
        switch (anonymousClass1.$r8$classId) {
            case 0:
                paddingLeft = anonymousClass1.this$0.getPaddingLeft();
                break;
            default:
                paddingLeft = anonymousClass1.this$0.getPaddingTop();
                break;
        }
        switch (anonymousClass1.$r8$classId) {
            case 0:
                LayoutManager layoutManager = anonymousClass1.this$0;
                i5 = layoutManager.mWidth;
                paddingRight = layoutManager.getPaddingRight();
                break;
            default:
                LayoutManager layoutManager2 = anonymousClass1.this$0;
                i5 = layoutManager2.mHeight;
                paddingRight = layoutManager2.getPaddingBottom();
                break;
        }
        int i8 = i5 - paddingRight;
        int i9 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            switch (anonymousClass1.$r8$classId) {
                case 0:
                    childAt = anonymousClass1.this$0.getChildAt(i);
                    break;
                default:
                    childAt = anonymousClass1.this$0.getChildAt(i);
                    break;
            }
            switch (anonymousClass1.$r8$classId) {
                case 0:
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                    decoratedLeft = RecyclerView.LayoutManager.getDecoratedLeft(childAt);
                    i6 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    break;
                default:
                    RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                    decoratedLeft = RecyclerView.LayoutManager.getDecoratedTop(childAt);
                    i6 = ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
                    break;
            }
            int i10 = decoratedLeft - i6;
            switch (anonymousClass1.$r8$classId) {
                case 0:
                    RecyclerView.LayoutParams layoutParams3 = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                    decoratedRight = RecyclerView.LayoutManager.getDecoratedRight(childAt);
                    i7 = ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin;
                    break;
                default:
                    RecyclerView.LayoutParams layoutParams4 = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                    decoratedRight = RecyclerView.LayoutManager.getDecoratedBottom(childAt);
                    i7 = ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin;
                    break;
            }
            int i11 = decoratedRight + i7;
            config.max_lazy = paddingLeft;
            config.nice_length = i8;
            config.max_chain = i10;
            config.func = i11;
            if (i3 != 0) {
                config.good_length = i3;
                if (config.boundsMatch()) {
                    return childAt;
                }
            }
            if (i4 != 0) {
                config.good_length = i4;
                if (config.boundsMatch()) {
                    view = childAt;
                }
            }
            i += i9;
        }
        return view;
    }

    public Object get(Poolable poolable) {
        HashMap hashMap = (HashMap) this.inverseAlphabet;
        GroupedLinkedMap$LinkedEntry groupedLinkedMap$LinkedEntry = (GroupedLinkedMap$LinkedEntry) hashMap.get(poolable);
        if (groupedLinkedMap$LinkedEntry == null) {
            groupedLinkedMap$LinkedEntry = new GroupedLinkedMap$LinkedEntry(poolable);
            hashMap.put(poolable, groupedLinkedMap$LinkedEntry);
        } else {
            poolable.offer();
        }
        GroupedLinkedMap$LinkedEntry groupedLinkedMap$LinkedEntry2 = groupedLinkedMap$LinkedEntry.prev;
        groupedLinkedMap$LinkedEntry2.next = groupedLinkedMap$LinkedEntry.next;
        groupedLinkedMap$LinkedEntry.next.prev = groupedLinkedMap$LinkedEntry2;
        GroupedLinkedMap$LinkedEntry groupedLinkedMap$LinkedEntry3 = (GroupedLinkedMap$LinkedEntry) this.alphabet;
        groupedLinkedMap$LinkedEntry.prev = groupedLinkedMap$LinkedEntry3;
        GroupedLinkedMap$LinkedEntry groupedLinkedMap$LinkedEntry4 = groupedLinkedMap$LinkedEntry3.next;
        groupedLinkedMap$LinkedEntry.next = groupedLinkedMap$LinkedEntry4;
        groupedLinkedMap$LinkedEntry4.prev = groupedLinkedMap$LinkedEntry;
        groupedLinkedMap$LinkedEntry.prev.next = groupedLinkedMap$LinkedEntry;
        ArrayList arrayList = groupedLinkedMap$LinkedEntry.values;
        int size = arrayList != null ? arrayList.size() : 0;
        if (size > 0) {
            return groupedLinkedMap$LinkedEntry.values.remove(size - 1);
        }
        return null;
    }

    @Override // com.bumptech.glide.load.ResourceEncoder
    public int getEncodeStrategy(Options options) {
        return 2;
    }

    public synchronized List getOrAddEntryList(String str) {
        List list;
        try {
            if (!((ArrayList) this.alphabet).contains(str)) {
                ((ArrayList) this.alphabet).add(str);
            }
            list = (List) ((HashMap) this.inverseAlphabet).get(str);
            if (list == null) {
                list = new ArrayList();
                ((HashMap) this.inverseAlphabet).put(str, list);
            }
        } catch (Throwable th) {
            throw th;
        }
        return list;
    }

    public synchronized ArrayList getResourceClasses(Class cls, Class cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = ((ArrayList) this.alphabet).iterator();
        while (it.hasNext()) {
            List<ResourceDecoderRegistry$Entry> list = (List) ((HashMap) this.inverseAlphabet).get((String) it.next());
            if (list != null) {
                for (ResourceDecoderRegistry$Entry resourceDecoderRegistry$Entry : list) {
                    if ((resourceDecoderRegistry$Entry.dataClass.isAssignableFrom(cls) && cls2.isAssignableFrom(resourceDecoderRegistry$Entry.resourceClass)) && !arrayList.contains(resourceDecoderRegistry$Entry.resourceClass)) {
                        arrayList.add(resourceDecoderRegistry$Entry.resourceClass);
                    }
                }
            }
        }
        return arrayList;
    }

    public String getSafeKey(Key key) {
        String str;
        synchronized (((LruCache) this.alphabet)) {
            str = (String) ((LruCache) this.alphabet).get(key);
        }
        if (str == null) {
            str = calculateHexStringDigest(key);
        }
        synchronized (((LruCache) this.alphabet)) {
            ((LruCache) this.alphabet).put(key, str);
        }
        return str;
    }

    public SavedStateRegistry$SavedStateProvider getSavedStateProvider(String str) {
        SavedStateRegistry$SavedStateProvider savedStateRegistry$SavedStateProvider;
        SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) this.alphabet;
        synchronized (savedStateRegistryImpl.lock) {
            Iterator it = savedStateRegistryImpl.keyToProviders.entrySet().iterator();
            do {
                savedStateRegistry$SavedStateProvider = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str2 = (String) entry.getKey();
                SavedStateRegistry$SavedStateProvider savedStateRegistry$SavedStateProvider2 = (SavedStateRegistry$SavedStateProvider) entry.getValue();
                if (Intrinsics.areEqual(str2, str)) {
                    savedStateRegistry$SavedStateProvider = savedStateRegistry$SavedStateProvider2;
                }
            } while (savedStateRegistry$SavedStateProvider == null);
        }
        return savedStateRegistry$SavedStateProvider;
    }

    public void lock() {
        FileChannel convertMaybeLegacyFileChannelFromLibrary;
        String str = (String) this.alphabet;
        if (((FileChannel) this.inverseAlphabet) != null) {
            return;
        }
        try {
            File file = new File(str);
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            convertMaybeLegacyFileChannelFromLibrary = DesugarChannels.convertMaybeLegacyFileChannelFromLibrary(new FileOutputStream(file).getChannel());
            this.inverseAlphabet = convertMaybeLegacyFileChannelFromLibrary;
            if (convertMaybeLegacyFileChannelFromLibrary != null) {
                convertMaybeLegacyFileChannelFromLibrary.lock();
            }
        } catch (Throwable th) {
            FileChannel fileChannel = (FileChannel) this.inverseAlphabet;
            if (fileChannel != null) {
                fileChannel.close();
            }
            this.inverseAlphabet = null;
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unable to lock file: '", str, "'."), th);
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        ViewPager viewPager = (ViewPager) this.inverseAlphabet;
        WindowInsetsCompat onApplyWindowInsets = ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
        if (onApplyWindowInsets.mImpl.isConsumed()) {
            return onApplyWindowInsets;
        }
        Rect rect = (Rect) this.alphabet;
        rect.left = onApplyWindowInsets.getSystemWindowInsetLeft();
        rect.top = onApplyWindowInsets.getSystemWindowInsetTop();
        rect.right = onApplyWindowInsets.getSystemWindowInsetRight();
        rect.bottom = onApplyWindowInsets.getSystemWindowInsetBottom();
        int childCount = viewPager.getChildCount();
        for (int i = 0; i < childCount; i++) {
            WindowInsetsCompat dispatchApplyWindowInsets = ViewCompat.dispatchApplyWindowInsets(viewPager.getChildAt(i), onApplyWindowInsets);
            rect.left = Math.min(dispatchApplyWindowInsets.getSystemWindowInsetLeft(), rect.left);
            rect.top = Math.min(dispatchApplyWindowInsets.getSystemWindowInsetTop(), rect.top);
            rect.right = Math.min(dispatchApplyWindowInsets.getSystemWindowInsetRight(), rect.right);
            rect.bottom = Math.min(dispatchApplyWindowInsets.getSystemWindowInsetBottom(), rect.bottom);
        }
        return onApplyWindowInsets.replaceSystemWindowInsets(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public AsyncTaskLoader onCreateLoader(int i, Bundle bundle) {
        if (i == 2) {
            MessageLoaderHelper messageLoaderHelper = (MessageLoaderHelper) this.inverseAlphabet;
            return new LocalMessageExtractorLoader(messageLoaderHelper.context, messageLoaderHelper.localMessage, messageLoaderHelper.messageCryptoAnnotations, messageLoaderHelper.messageViewInfoExtractor);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("loader id must be message decoder id");
        return null;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void onDataReady(Object obj) {
        SourceGenerator sourceGenerator = (SourceGenerator) this.inverseAlphabet;
        ModelLoader.LoadData loadData = (ModelLoader.LoadData) this.alphabet;
        ModelLoader.LoadData loadData2 = sourceGenerator.loadData;
        if (loadData2 == null || loadData2 != loadData) {
            return;
        }
        SourceGenerator sourceGenerator2 = (SourceGenerator) this.inverseAlphabet;
        ModelLoader.LoadData loadData3 = (ModelLoader.LoadData) this.alphabet;
        DiskCacheStrategy$2 diskCacheStrategy$2 = sourceGenerator2.helper.diskCacheStrategy;
        if (obj == null || !diskCacheStrategy$2.isDataCacheable(loadData3.fetcher.getDataSource())) {
            DecodeJob decodeJob = sourceGenerator2.cb;
            Key key = loadData3.sourceKey;
            DataFetcher dataFetcher = loadData3.fetcher;
            decodeJob.onDataFetcherReady(key, obj, dataFetcher, dataFetcher.getDataSource(), sourceGenerator2.originalKey);
            return;
        }
        sourceGenerator2.dataToCache = obj;
        DecodeJob decodeJob2 = sourceGenerator2.cb;
        decodeJob2.runReason = 2;
        EngineJob engineJob = decodeJob2.callback;
        (engineJob.useAnimationPool ? engineJob.animationExecutor : engineJob.sourceExecutor).execute(decodeJob2);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
    public void onDecodeComplete(Bitmap bitmap, BitmapPool bitmapPool) {
        IOException iOException = ((ExceptionPassthroughInputStream) this.inverseAlphabet).exception;
        if (iOException != null) {
            if (bitmap == null) {
                throw iOException;
            }
            bitmapPool.put(bitmap);
            throw iOException;
        }
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void onDownloadErrorMessageNotFound() {
        ((MessageCompose) this.inverseAlphabet).runOnUiThread(new MessageCompose$MessageComposeMessageLoaderCallback$1(this, 0));
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void onDownloadErrorNetworkError() {
        ((MessageCompose) this.inverseAlphabet).runOnUiThread(new MessageCompose$MessageComposeMessageLoaderCallback$1(this, 1));
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void onLoadFailed(Exception exc) {
        SourceGenerator sourceGenerator = (SourceGenerator) this.inverseAlphabet;
        ModelLoader.LoadData loadData = (ModelLoader.LoadData) this.alphabet;
        ModelLoader.LoadData loadData2 = sourceGenerator.loadData;
        if (loadData2 == null || loadData2 != loadData) {
            return;
        }
        SourceGenerator sourceGenerator2 = (SourceGenerator) this.inverseAlphabet;
        ModelLoader.LoadData loadData3 = (ModelLoader.LoadData) this.alphabet;
        DecodeJob decodeJob = sourceGenerator2.cb;
        DataCacheKey dataCacheKey = sourceGenerator2.originalKey;
        DataFetcher dataFetcher = loadData3.fetcher;
        decodeJob.onDataFetcherFailed(dataCacheKey, exc, dataFetcher, dataFetcher.getDataSource());
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public void onLoadFinished(AsyncTaskLoader asyncTaskLoader, Object obj) {
        MessageViewInfo messageViewInfo = (MessageViewInfo) obj;
        if (asyncTaskLoader.mId != 2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("loader id must be message decoder id");
        } else {
            if (messageViewInfo == ((MessageViewInfo) this.alphabet)) {
                return;
            }
            this.alphabet = messageViewInfo;
            ((MessageLoaderHelper) this.inverseAlphabet).onDecodeMessageFinished(messageViewInfo);
        }
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(AsyncTaskLoader asyncTaskLoader) {
        if (asyncTaskLoader.mId == 2) {
            this.alphabet = null;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("loader id must be message decoder id");
        }
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void onMessageDataLoadFailed() {
        MessageCompose messageCompose = (MessageCompose) this.inverseAlphabet;
        messageCompose.internalMessageHandler.sendEmptyMessage(2);
        Toast.makeText(messageCompose, R.string.status_invalid_id_error, 1).show();
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void onMessageViewInfoLoadFailed(MessageViewInfo messageViewInfo) {
        MessageCompose messageCompose = (MessageCompose) this.inverseAlphabet;
        messageCompose.internalMessageHandler.sendEmptyMessage(2);
        Toast.makeText(messageCompose, R.string.status_invalid_id_error, 1).show();
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void onMessageViewInfoLoadFinished(MessageViewInfo messageViewInfo) {
        MessageCompose messageCompose = (MessageCompose) this.inverseAlphabet;
        messageCompose.internalMessageHandler.sendEmptyMessage(2);
        messageCompose.loadLocalMessageForDisplay(messageViewInfo, messageCompose.action);
        if (!messageCompose.recipientPresenter.isToAddressAdded) {
            ((RecipientMvpView) this.alphabet).toView.requestFocus();
        } else if (messageCompose.subjectView.getText().length() == 0) {
            messageCompose.subjectView.requestFocus();
        } else {
            messageCompose.messageContentView.requestFocus();
        }
    }

    @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
    public void onObtainBounds() {
        RecyclableBufferedInputStream recyclableBufferedInputStream = (RecyclableBufferedInputStream) this.alphabet;
        synchronized (recyclableBufferedInputStream) {
            recyclableBufferedInputStream.marklimit = recyclableBufferedInputStream.buf.length;
        }
    }

    @Override // net.openid.appauth.AuthorizationService.TokenResponseCallback
    public void onTokenRequestCompleted(TokenResponse tokenResponse, AuthorizationException authorizationException) {
        Object failure;
        AuthorizationState authorizationState;
        if (authorizationException != null) {
            failure = new AuthorizationResult.Failure(authorizationException);
        } else if (tokenResponse != null) {
            try {
                authorizationState = new AuthorizationState(new AuthState((AuthorizationResponse) this.alphabet, tokenResponse).jsonSerializeString());
            } catch (JSONException e) {
                Log.e(e, "Error serializing AuthorizationState", new Object[0]);
                authorizationState = new AuthorizationState(null);
            }
            failure = new AuthorizationResult.Success(authorizationState);
        } else {
            failure = new AuthorizationResult.Failure(new Exception("Unknown error"));
        }
        ((SafeContinuation) this.inverseAlphabet).resumeWith(failure);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0069 A[Catch: all -> 0x002f, TryCatch #5 {all -> 0x002f, blocks: (B:11:0x002b, B:12:0x0063, B:14:0x0069, B:18:0x0088, B:21:0x0093, B:22:0x0098), top: B:10:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0088 A[Catch: all -> 0x002f, TRY_LEAVE, TryCatch #5 {all -> 0x002f, blocks: (B:11:0x002b, B:12:0x0063, B:14:0x0069, B:18:0x0088, B:21:0x0093, B:22:0x0098), top: B:10:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object parseSettings(app.k9mail.autodiscovery.autoconfig.HttpFetchResult.SuccessResponse r9, net.thunderbird.core.common.mail.EmailAddress r10, okhttp3.HttpUrl r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r8 = this;
            boolean r0 = r12 instanceof app.k9mail.autodiscovery.autoconfig.RealAutoconfigFetcher$parseSettings$1
            if (r0 == 0) goto L13
            r0 = r12
            app.k9mail.autodiscovery.autoconfig.RealAutoconfigFetcher$parseSettings$1 r0 = (app.k9mail.autodiscovery.autoconfig.RealAutoconfigFetcher$parseSettings$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.autodiscovery.autoconfig.RealAutoconfigFetcher$parseSettings$1 r0 = new app.k9mail.autodiscovery.autoconfig.RealAutoconfigFetcher$parseSettings$1
            r0.<init>(r8, r12)
        L18:
            java.lang.Object r12 = r0.result
            int r1 = r0.label
            r2 = 0
            app.k9mail.autodiscovery.api.AutoDiscoveryResult$NoUsableSettingsFound r3 = app.k9mail.autodiscovery.api.AutoDiscoveryResult.NoUsableSettingsFound.INSTANCE
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L38
            if (r1 != r4) goto L32
            java.io.InputStream r8 = r0.L$3
            okhttp3.HttpUrl r11 = r0.L$2
            app.k9mail.autodiscovery.autoconfig.HttpFetchResult$SuccessResponse r9 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L2f
            goto L63
        L2f:
            r9 = move-exception
            goto La3
        L32:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r8)
            return r5
        L38:
            kotlin.ResultKt.throwOnFailure(r12)
            java.io.InputStream r12 = r9.inputStream     // Catch: app.k9mail.autodiscovery.autoconfig.AutoconfigParserException -> L91
            java.lang.Object r8 = r8.inverseAlphabet     // Catch: java.lang.Throwable -> La1
            com.jcraft.jzlib.Adler32 r8 = (com.jcraft.jzlib.Adler32) r8     // Catch: java.lang.Throwable -> La1
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L9f
            r0.L$2 = r11     // Catch: java.lang.Throwable -> L9f
            r0.L$3 = r12     // Catch: java.lang.Throwable -> L9f
            r0.label = r4     // Catch: java.lang.Throwable -> L9f
            kotlinx.coroutines.scheduling.DefaultScheduler r1 = kotlinx.coroutines.Dispatchers.Default     // Catch: java.lang.Throwable -> L9b
            kotlinx.coroutines.scheduling.DefaultIoScheduler r1 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE     // Catch: java.lang.Throwable -> L9b
            kotlin.text.Regex$$ExternalSyntheticLambda1 r6 = new kotlin.text.Regex$$ExternalSyntheticLambda1     // Catch: java.lang.Throwable -> L9b
            r6.<init>(r8, r12, r10)     // Catch: java.lang.Throwable -> L9b
            kotlinx.coroutines.InterruptibleKt$runInterruptible$2 r8 = new kotlinx.coroutines.InterruptibleKt$runInterruptible$2     // Catch: java.lang.Throwable -> L9b
            r8.<init>(r6, r5, r2)     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r8 = kotlinx.coroutines.JobKt.withContext(r1, r8, r0)     // Catch: java.lang.Throwable -> L9b
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r10) goto L60
            return r10
        L60:
            r7 = r12
            r12 = r8
            r8 = r7
        L63:
            app.k9mail.autodiscovery.autoconfig.AutoconfigParserResult r12 = (app.k9mail.autodiscovery.autoconfig.AutoconfigParserResult) r12     // Catch: java.lang.Throwable -> L2f
            boolean r10 = r12 instanceof app.k9mail.autodiscovery.autoconfig.AutoconfigParserResult.Settings     // Catch: java.lang.Throwable -> L2f
            if (r10 == 0) goto L88
            app.k9mail.autodiscovery.api.AutoDiscoveryResult$Settings r10 = new app.k9mail.autodiscovery.api.AutoDiscoveryResult$Settings     // Catch: java.lang.Throwable -> L2f
            r0 = r12
            app.k9mail.autodiscovery.autoconfig.AutoconfigParserResult$Settings r0 = (app.k9mail.autodiscovery.autoconfig.AutoconfigParserResult.Settings) r0     // Catch: java.lang.Throwable -> L2f
            java.util.ArrayList r0 = r0.incomingServerSettings     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r0 = kotlin.collections.CollectionsKt.first(r0)     // Catch: java.lang.Throwable -> L2f
            app.k9mail.autodiscovery.api.ImapServerSettings r0 = (app.k9mail.autodiscovery.api.ImapServerSettings) r0     // Catch: java.lang.Throwable -> L2f
            app.k9mail.autodiscovery.autoconfig.AutoconfigParserResult$Settings r12 = (app.k9mail.autodiscovery.autoconfig.AutoconfigParserResult.Settings) r12     // Catch: java.lang.Throwable -> L2f
            java.util.ArrayList r12 = r12.outgoingServerSettings     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r12 = kotlin.collections.CollectionsKt.first(r12)     // Catch: java.lang.Throwable -> L2f
            app.k9mail.autodiscovery.api.SmtpServerSettings r12 = (app.k9mail.autodiscovery.api.SmtpServerSettings) r12     // Catch: java.lang.Throwable -> L2f
            boolean r9 = r9.isTrusted     // Catch: java.lang.Throwable -> L2f
            java.lang.String r1 = r11.url     // Catch: java.lang.Throwable -> L2f
            r10.<init>(r0, r12, r9, r1)     // Catch: java.lang.Throwable -> L2f
            goto L8d
        L88:
            boolean r9 = r12 instanceof app.k9mail.autodiscovery.autoconfig.AutoconfigParserResult.ParserError     // Catch: java.lang.Throwable -> L2f
            if (r9 == 0) goto L93
            r10 = r3
        L8d:
            kotlin.io.CloseableKt.closeFinally(r8, r5)     // Catch: app.k9mail.autodiscovery.autoconfig.AutoconfigParserException -> L91
            return r10
        L91:
            r8 = move-exception
            goto La9
        L93:
            org.jsoup.SerializationException r9 = new org.jsoup.SerializationException     // Catch: java.lang.Throwable -> L2f
            r9.<init>()     // Catch: java.lang.Throwable -> L2f
            throw r9     // Catch: java.lang.Throwable -> L2f
        L99:
            r9 = r8
            goto L9d
        L9b:
            r8 = move-exception
            goto L99
        L9d:
            r8 = r12
            goto La3
        L9f:
            r9 = move-exception
            goto L9d
        La1:
            r8 = move-exception
            goto L99
        La3:
            throw r9     // Catch: java.lang.Throwable -> La4
        La4:
            r10 = move-exception
            kotlin.io.CloseableKt.closeFinally(r8, r9)     // Catch: app.k9mail.autodiscovery.autoconfig.AutoconfigParserException -> L91
            throw r10     // Catch: app.k9mail.autodiscovery.autoconfig.AutoconfigParserException -> L91
        La9:
            java.lang.Object[] r9 = new java.lang.Object[r4]
            r9[r2] = r11
            java.lang.String r10 = "Failed to parse config from URL: %s"
            net.thunderbird.core.logging.legacy.Log.d(r8, r10, r9)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beetstra.jutf7.Base64Util.parseSettings(app.k9mail.autodiscovery.autoconfig.HttpFetchResult$SuccessResponse, net.thunderbird.core.common.mail.EmailAddress, okhttp3.HttpUrl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public void performAttach() {
        ((SavedStateRegistryImpl) this.alphabet).performAttach();
    }

    public void performRestore(Bundle bundle) {
        SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) this.alphabet;
        SavedStateRegistryOwner savedStateRegistryOwner = savedStateRegistryImpl.owner;
        if (!savedStateRegistryImpl.attached) {
            savedStateRegistryImpl.performAttach();
        }
        if (((LifecycleRegistry) savedStateRegistryOwner.getLifecycle()).state.compareTo(Lifecycle.State.STARTED) >= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) ((LifecycleRegistry) savedStateRegistryOwner.getLifecycle()).state, "performRestore cannot be called when owner is ");
            return;
        }
        if (savedStateRegistryImpl.isRestored) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("SavedStateRegistry was already restored.");
            return;
        }
        Bundle bundle2 = null;
        if (bundle != null && bundle.containsKey("androidx.lifecycle.BundlableSavedStateRegistry.key")) {
            Bundle bundle3 = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            if (bundle3 == null) {
                OperationKt.keyOrValueNotFoundError("androidx.lifecycle.BundlableSavedStateRegistry.key");
                throw null;
            }
            bundle2 = bundle3;
        }
        savedStateRegistryImpl.restoredState = bundle2;
        savedStateRegistryImpl.isRestored = true;
    }

    public void performSave(Bundle bundle) {
        SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) this.alphabet;
        Bundle bundleOf = org.slf4j.helpers.Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle2 = savedStateRegistryImpl.restoredState;
        if (bundle2 != null) {
            bundleOf.putAll(bundle2);
        }
        synchronized (savedStateRegistryImpl.lock) {
            for (Map.Entry entry : savedStateRegistryImpl.keyToProviders.entrySet()) {
                String str = (String) entry.getKey();
                Bundle saveState = ((SavedStateRegistry$SavedStateProvider) entry.getValue()).saveState();
                str.getClass();
                bundleOf.putBundle(str, saveState);
            }
        }
        if (bundleOf.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundleOf);
    }

    public void put(Poolable poolable, Object obj) {
        HashMap hashMap = (HashMap) this.inverseAlphabet;
        GroupedLinkedMap$LinkedEntry groupedLinkedMap$LinkedEntry = (GroupedLinkedMap$LinkedEntry) hashMap.get(poolable);
        if (groupedLinkedMap$LinkedEntry == null) {
            groupedLinkedMap$LinkedEntry = new GroupedLinkedMap$LinkedEntry(poolable);
            groupedLinkedMap$LinkedEntry.prev = groupedLinkedMap$LinkedEntry;
            GroupedLinkedMap$LinkedEntry groupedLinkedMap$LinkedEntry2 = (GroupedLinkedMap$LinkedEntry) this.alphabet;
            groupedLinkedMap$LinkedEntry.prev = groupedLinkedMap$LinkedEntry2.prev;
            groupedLinkedMap$LinkedEntry.next = groupedLinkedMap$LinkedEntry2;
            groupedLinkedMap$LinkedEntry2.prev = groupedLinkedMap$LinkedEntry;
            groupedLinkedMap$LinkedEntry.prev.next = groupedLinkedMap$LinkedEntry;
            hashMap.put(poolable, groupedLinkedMap$LinkedEntry);
        } else {
            poolable.offer();
        }
        if (groupedLinkedMap$LinkedEntry.values == null) {
            groupedLinkedMap$LinkedEntry.values = new ArrayList();
        }
        groupedLinkedMap$LinkedEntry.values.add(obj);
    }

    public void registerSavedStateProvider(String str, SavedStateRegistry$SavedStateProvider savedStateRegistry$SavedStateProvider) {
        savedStateRegistry$SavedStateProvider.getClass();
        SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) this.alphabet;
        synchronized (savedStateRegistryImpl.lock) {
            if (savedStateRegistryImpl.keyToProviders.containsKey(str)) {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
            savedStateRegistryImpl.keyToProviders.put(str, savedStateRegistry$SavedStateProvider);
        }
    }

    public void release(String str) {
        DiskCacheWriteLocker$WriteLock diskCacheWriteLocker$WriteLock;
        synchronized (this) {
            try {
                Object obj = ((HashMap) this.alphabet).get(str);
                Util.checkNotNull(obj, "Argument must not be null");
                diskCacheWriteLocker$WriteLock = (DiskCacheWriteLocker$WriteLock) obj;
                int i = diskCacheWriteLocker$WriteLock.interestedThreads;
                if (i < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + diskCacheWriteLocker$WriteLock.interestedThreads);
                }
                int i2 = i - 1;
                diskCacheWriteLocker$WriteLock.interestedThreads = i2;
                if (i2 == 0) {
                    DiskCacheWriteLocker$WriteLock diskCacheWriteLocker$WriteLock2 = (DiskCacheWriteLocker$WriteLock) ((HashMap) this.alphabet).remove(str);
                    if (!diskCacheWriteLocker$WriteLock2.equals(diskCacheWriteLocker$WriteLock)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + diskCacheWriteLocker$WriteLock + ", but actually removed: " + diskCacheWriteLocker$WriteLock2 + ", safeKey: " + str);
                    }
                    ((DiskCacheWriteLocker$WriteLockPool) this.inverseAlphabet).offer(diskCacheWriteLocker$WriteLock2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        diskCacheWriteLocker$WriteLock.lock.unlock();
    }

    public StartStopToken remove(WorkGenerationalId workGenerationalId) {
        StartStopToken remove;
        workGenerationalId.getClass();
        synchronized (this.inverseAlphabet) {
            remove = ((Data.Builder) this.alphabet).remove(workGenerationalId);
        }
        return remove;
    }

    public void removeAttachmentView(Attachment attachment) {
        HashMap hashMap = (HashMap) this.alphabet;
        View view = (View) hashMap.get(attachment.uri);
        MessageCompose messageCompose = (MessageCompose) this.inverseAlphabet;
        messageCompose.attachmentsView.removeView(view);
        hashMap.remove(attachment.uri);
        if (hashMap.isEmpty()) {
            messageCompose.attachmentsView.setVisibility(8);
        }
    }

    public Object removeLast() {
        GroupedLinkedMap$LinkedEntry groupedLinkedMap$LinkedEntry = (GroupedLinkedMap$LinkedEntry) this.alphabet;
        GroupedLinkedMap$LinkedEntry groupedLinkedMap$LinkedEntry2 = groupedLinkedMap$LinkedEntry.prev;
        while (true) {
            boolean equals = groupedLinkedMap$LinkedEntry2.equals(groupedLinkedMap$LinkedEntry);
            Object obj = groupedLinkedMap$LinkedEntry2.key;
            if (equals) {
                return null;
            }
            ArrayList arrayList = groupedLinkedMap$LinkedEntry2.values;
            int size = arrayList != null ? arrayList.size() : 0;
            Object remove = size > 0 ? groupedLinkedMap$LinkedEntry2.values.remove(size - 1) : null;
            if (remove != null) {
                return remove;
            }
            GroupedLinkedMap$LinkedEntry groupedLinkedMap$LinkedEntry3 = groupedLinkedMap$LinkedEntry2.prev;
            groupedLinkedMap$LinkedEntry3.next = groupedLinkedMap$LinkedEntry2.next;
            groupedLinkedMap$LinkedEntry2.next.prev = groupedLinkedMap$LinkedEntry3;
            ((HashMap) this.inverseAlphabet).remove(obj);
            ((Poolable) obj).offer();
            groupedLinkedMap$LinkedEntry2 = groupedLinkedMap$LinkedEntry2.prev;
        }
    }

    public void runOnNextRecreation() {
        if (!((SavedStateRegistryImpl) this.alphabet).isAllowingSavingState) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Can not perform this action after onSaveInstanceState");
            return;
        }
        AppCompatActivity.AnonymousClass1 anonymousClass1 = (AppCompatActivity.AnonymousClass1) this.inverseAlphabet;
        if (anonymousClass1 == null) {
            anonymousClass1 = new AppCompatActivity.AnonymousClass1(this);
        }
        this.inverseAlphabet = anonymousClass1;
        try {
            LegacySavedStateHandleController$OnRecreation.class.getDeclaredConstructor(null);
            AppCompatActivity.AnonymousClass1 anonymousClass12 = (AppCompatActivity.AnonymousClass1) this.inverseAlphabet;
            if (anonymousClass12 != null) {
                ((LinkedHashSet) anonymousClass12.this$0).add(LegacySavedStateHandleController$OnRecreation.class.getName());
            }
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class " + LegacySavedStateHandleController$OnRecreation.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public boolean startIntentSenderForMessageLoaderHelper(IntentSender intentSender) {
        try {
            OpenPgpIntentStarter.startIntentSenderForResult((MessageCompose) this.inverseAlphabet, intentSender, 636);
            return true;
        } catch (IntentSender.SendIntentException e) {
            Log.e(e, "Irrecoverable error calling PendingIntent!", new Object[0]);
            return true;
        }
    }

    public void startWork(StartStopToken startStopToken, SystemClock systemClock) {
        startStopToken.getClass();
        Dispatcher dispatcher = (Dispatcher) this.inverseAlphabet;
        ((TransactionExecutor) dispatcher.executorServiceOrNull).execute(new Processor$$ExternalSyntheticLambda1(this, startStopToken, systemClock, 14));
    }

    public void stopWork(StartStopToken startStopToken, int i) {
        startStopToken.getClass();
        Dispatcher dispatcher = (Dispatcher) this.inverseAlphabet;
        ((TransactionExecutor) dispatcher.executorServiceOrNull).execute(new StopWorkRunnable((Processor) this.alphabet, startStopToken, false, i));
    }

    public String toString() {
        switch (this.$r8$classId) {
            case OffsetKt.Horizontal /* 15 */:
                StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
                GroupedLinkedMap$LinkedEntry groupedLinkedMap$LinkedEntry = (GroupedLinkedMap$LinkedEntry) this.alphabet;
                GroupedLinkedMap$LinkedEntry groupedLinkedMap$LinkedEntry2 = groupedLinkedMap$LinkedEntry.next;
                boolean z = false;
                while (!groupedLinkedMap$LinkedEntry2.equals(groupedLinkedMap$LinkedEntry)) {
                    sb.append('{');
                    sb.append(groupedLinkedMap$LinkedEntry2.key);
                    sb.append(':');
                    ArrayList arrayList = groupedLinkedMap$LinkedEntry2.values;
                    sb.append(arrayList != null ? arrayList.size() : 0);
                    sb.append("}, ");
                    groupedLinkedMap$LinkedEntry2 = groupedLinkedMap$LinkedEntry2.next;
                    z = true;
                }
                if (z) {
                    sb.delete(sb.length() - 2, sb.length());
                }
                sb.append(" )");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public StartStopToken tokenFor(WorkGenerationalId workGenerationalId) {
        StartStopToken startStopToken;
        synchronized (this.inverseAlphabet) {
            startStopToken = ((Data.Builder) this.alphabet).tokenFor(workGenerationalId);
        }
        return startStopToken;
    }

    public void unblock$room_runtime_release() {
        synchronized (this) {
            ((AtomicInteger) this.alphabet).decrementAndGet();
            if (((AtomicInteger) this.alphabet).get() < 0) {
                throw new IllegalStateException("Unbalanced call to unblock() detected.");
            }
        }
    }

    public void updateAttachmentView(Attachment attachment) {
        MessageCompose messageCompose = (MessageCompose) this.inverseAlphabet;
        HashMap hashMap = (HashMap) this.alphabet;
        Uri uri = attachment.uri;
        String str = attachment.fileName;
        Long l = attachment.size;
        Attachment.LoadingState loadingState = attachment.state;
        View view = (View) hashMap.get(uri);
        if (view == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            return;
        }
        MaterialTextView materialTextView = (MaterialTextView) view.findViewById(R.id.attachment_name);
        if (loadingState != Attachment.LoadingState.URI_ONLY) {
            materialTextView.setText(attachment.name);
        } else {
            materialTextView.setText(R.string.loading_attachment);
        }
        if (l != null && l.longValue() >= 0) {
            ((MaterialTextView) view.findViewById(R.id.attachment_size)).setText(messageCompose.sizeFormatter.formatSize(l.longValue()));
        }
        View findViewById = view.findViewById(R.id.progressBar);
        if (loadingState != Attachment.LoadingState.COMPLETE) {
            findViewById.setVisibility(0);
            return;
        }
        String str2 = attachment.contentType;
        if (str2 != null && (FileHelper.isSupportedImageType(str2) || (FileHelper.isSameMimeType("application/octet-stream", str2) && str != null && FileHelper.isSupportedImageType(FileHelper.getMimeTypeByExtension(str))))) {
            ((ImageView) view.findViewById(R.id.attachment_type)).setImageResource(R.drawable.ic_image);
            ImageView imageView = (ImageView) view.findViewById(R.id.attachment_preview);
            imageView.setVisibility(0);
            ((RequestBuilder) ((RequestBuilder) Glide.get(messageCompose).requestManagerRetriever.get((AppCompatActivity) messageCompose).load(new File(str)).centerCrop()).diskCacheStrategy(DiskCacheStrategy$2.NONE)).into(imageView);
        }
        findViewById.setVisibility(8);
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void onMessageDataLoadFinished(LocalMessage localMessage) {
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void setLoadingProgress(int i, int i2) {
    }

    public void put(Class cls, Class cls2, Class cls3, List list) {
        synchronized (((ArrayMap) this.inverseAlphabet)) {
            ((ArrayMap) this.inverseAlphabet).put(new MultiClassKey(cls, cls2, cls3), list);
        }
    }

    public /* synthetic */ Base64Util(int i, Object obj, Object obj2, boolean z) {
        this.$r8$classId = i;
        this.inverseAlphabet = obj;
        this.alphabet = obj2;
    }

    public /* synthetic */ Base64Util(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.alphabet = obj;
        this.inverseAlphabet = obj2;
    }

    public Base64Util(SavedStateRegistryImpl savedStateRegistryImpl, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 4:
                this.alphabet = savedStateRegistryImpl;
                this.inverseAlphabet = new Base64Util(savedStateRegistryImpl, 3);
                break;
            default:
                this.alphabet = savedStateRegistryImpl;
                break;
        }
    }

    public Base64Util(RequestManagerRetriever.RequestManagerFactory requestManagerFactory) {
        this.$r8$classId = 21;
        this.alphabet = new HashMap();
        this.inverseAlphabet = requestManagerFactory;
    }

    public Base64Util(ArrayList arrayList) {
        this.$r8$classId = 10;
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.alphabet = arrayList;
        this.inverseAlphabet = defaultIoScheduler;
    }

    public Base64Util(RoomDatabase$closeBarrier$1 roomDatabase$closeBarrier$1) {
        this.$r8$classId = 1;
        this.alphabet = new AtomicInteger(0);
        this.inverseAlphabet = new AtomicBoolean(false);
    }

    public Base64Util(Processor processor, Dispatcher dispatcher) {
        this.$r8$classId = 8;
        processor.getClass();
        dispatcher.getClass();
        this.alphabet = processor;
        this.inverseAlphabet = dispatcher;
    }

    public Base64Util(String str, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 2:
                this.alphabet = str.concat(".lck");
                return;
            default:
                this.alphabet = str.toCharArray();
                if (str.length() == 64) {
                    int[] iArr = new int[128];
                    this.inverseAlphabet = iArr;
                    Arrays.fill(iArr, -1);
                    int i2 = 0;
                    while (true) {
                        char[] cArr = (char[]) this.alphabet;
                        if (i2 >= cArr.length) {
                            return;
                        }
                        char c = cArr[i2];
                        if (c < 128) {
                            ((int[]) this.inverseAlphabet)[c] = i2;
                            i2++;
                        } else {
                            StringBuffer stringBuffer = new StringBuffer("invalid character in alphabet: ");
                            stringBuffer.append(c);
                            throw new IllegalArgumentException(stringBuffer.toString());
                        }
                    }
                } else {
                    StringBuffer stringBuffer2 = new StringBuffer("alphabet has incorrect length (should be 64, not ");
                    stringBuffer2.append(str.length());
                    stringBuffer2.append(")");
                    throw new IllegalArgumentException(stringBuffer2.toString());
                }
        }
    }

    public Base64Util(Data.Builder builder) {
        this.$r8$classId = 7;
        this.alphabet = builder;
        this.inverseAlphabet = new Object();
    }

    public Base64Util(LayoutManager.AnonymousClass1 anonymousClass1) {
        this.$r8$classId = 13;
        this.alphabet = anonymousClass1;
        Deflate.Config config = new Deflate.Config(2);
        config.good_length = 0;
        this.inverseAlphabet = config;
    }

    public Base64Util(MessageViewContainerFragment.MessageViewContainerAdapter messageViewContainerAdapter, Fragment fragment, FrameLayout frameLayout) {
        this.$r8$classId = 6;
        this.alphabet = fragment;
        this.inverseAlphabet = frameLayout;
    }

    public Base64Util(MessageLoaderHelper messageLoaderHelper) {
        this.$r8$classId = 26;
        this.inverseAlphabet = messageLoaderHelper;
    }

    public Base64Util(ViewPager viewPager) {
        this.$r8$classId = 5;
        this.inverseAlphabet = viewPager;
        this.alphabet = new Rect();
    }

    public Base64Util(MessageCompose messageCompose) {
        this.$r8$classId = 24;
        this.inverseAlphabet = messageCompose;
        this.alphabet = new HashMap();
    }
}
