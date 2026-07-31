package retrofit2;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.location.Location;
import android.media.MediaPlayer;
import android.text.Spanned;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.room.Room;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import com.google.gson.GsonBuilder;
import io.getstream.photoview.PhotoView;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.Json;
import okhttp3.Cache;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.RealCall;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio__OkioKt;
import okio.RealBufferedSource;
import org.jsoup.Jsoup;
import org.maplibre.android.maps.MapLibreMap;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.gallery.GalleryActivity;
import org.wikipedia.gallery.GalleryItemFragment;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.media.MediaPlayerImplementation$CallbackWrapper;
import org.wikipedia.page.PageTitle;
import org.wikipedia.places.PlacesFragment;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.ReadingListItemView;
import org.wikipedia.readinglist.ReadingListsReceiveHelper;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.talk.TalkThreadItemView;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.imageservice.ImageLoadListener;
import retrofit2.DefaultCallAdapterFactory;
import retrofit2.RequestBuilder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OkHttpCall implements Call {
    public final Object[] args;
    public final OkHttpClient callFactory;
    public volatile boolean canceled;
    public Throwable creationFailure;
    public boolean executed;
    public final Object instance;
    public RealCall rawCall;
    public final RequestFactory requestFactory;
    public final Converter responseConverter;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ExceptionCatchingResponseBody extends ResponseBody {
        public final ResponseBody delegate;
        public final RealBufferedSource delegateSource;
        public IOException thrownException;

        public ExceptionCatchingResponseBody(ResponseBody responseBody) {
            this.delegate = responseBody;
            this.delegateSource = new RealBufferedSource(new Cache.CacheResponseBody.AnonymousClass1(this, responseBody.source()));
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.delegate.close();
        }

        @Override // okhttp3.ResponseBody
        public final long contentLength() {
            return this.delegate.contentLength();
        }

        @Override // okhttp3.ResponseBody
        public final MediaType contentType() {
            return this.delegate.contentType();
        }

        @Override // okhttp3.ResponseBody
        public final BufferedSource source() {
            return this.delegateSource;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NoContentResponseBody extends ResponseBody {
        public final long contentLength;
        public final MediaType contentType;

        public NoContentResponseBody(MediaType mediaType, long j) {
            this.contentType = mediaType;
            this.contentLength = j;
        }

        @Override // okhttp3.ResponseBody
        public final long contentLength() {
            return this.contentLength;
        }

        @Override // okhttp3.ResponseBody
        public final MediaType contentType() {
            return this.contentType;
        }

        @Override // okhttp3.ResponseBody
        public final BufferedSource source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public OkHttpCall(RequestFactory requestFactory, Object obj, Object[] objArr, OkHttpClient okHttpClient, Converter converter) {
        this.requestFactory = requestFactory;
        this.instance = obj;
        this.args = objArr;
        this.callFactory = okHttpClient;
        this.responseConverter = converter;
    }

    @Override // retrofit2.Call
    public final void cancel() {
        RealCall realCall;
        this.canceled = true;
        synchronized (this) {
            realCall = this.rawCall;
        }
        if (realCall != null) {
            realCall.cancel();
        }
    }

    public final Object clone() {
        return new OkHttpCall(this.requestFactory, this.instance, this.args, this.callFactory, this.responseConverter);
    }

    public final RealCall createRawCall() {
        HttpUrl.Builder builder;
        HttpUrl httpUrl;
        RequestFactory requestFactory = this.requestFactory;
        Utils[] utilsArr = requestFactory.parameterHandlers;
        Object[] objArr = this.args;
        int length = objArr.length;
        if (length != utilsArr.length) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m(Animation.CC.m20m(length, "Argument count (", ") doesn't match expected count ("), utilsArr.length, ")"));
            return null;
        }
        RequestBuilder requestBuilder = new RequestBuilder(requestFactory.httpMethod, requestFactory.baseUrl, requestFactory.relativeUrl, requestFactory.headers, requestFactory.contentType, requestFactory.hasBody, requestFactory.isFormEncoded, requestFactory.isMultipart);
        if (requestFactory.isKotlinSuspendFunction) {
            length--;
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            arrayList.add(objArr[i]);
            utilsArr[i].apply(requestBuilder, objArr[i]);
        }
        HttpUrl httpUrl2 = requestBuilder.baseUrl;
        HttpUrl.Builder builder2 = requestBuilder.urlBuilder;
        if (builder2 != null) {
            httpUrl = builder2.m872build();
        } else {
            String str = requestBuilder.relativeUrl;
            str.getClass();
            try {
                builder = new HttpUrl.Builder(0);
                builder.parse$okhttp(httpUrl2, str);
            } catch (IllegalArgumentException unused) {
                builder = null;
            }
            HttpUrl m872build = builder != null ? builder.m872build() : null;
            if (m872build == null) {
                StringBuilder sb = new StringBuilder("Malformed URL. Base: ");
                sb.append(httpUrl2);
                Utils$$ExternalSyntheticBUOutline0.m(sb, ", Relative: ", requestBuilder.relativeUrl);
                return null;
            }
            httpUrl = m872build;
        }
        RequestBody requestBody = requestBuilder.body;
        if (requestBody == null) {
            FormBody.Builder builder3 = requestBuilder.formBuilder;
            if (builder3 != null) {
                requestBody = new FormBody((ArrayList) builder3.names, (ArrayList) builder3.values);
            } else {
                MultipartBody.Builder builder4 = requestBuilder.multipartBuilder;
                if (builder4 != null) {
                    ArrayList arrayList2 = (ArrayList) builder4.parts;
                    if (arrayList2.isEmpty()) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Multipart body must have at least one part.");
                        return null;
                    }
                    requestBody = new MultipartBody((ByteString) builder4.boundary, (MediaType) builder4.type, _UtilJvmKt.toImmutableList(arrayList2));
                } else if (requestBuilder.hasBody) {
                    int i2 = RequestBody.$r8$clinit;
                    _UtilCommonKt.checkOffsetAndCount(0L, 0L, 0L);
                    requestBody = new RequestBody$Companion$toRequestBody$3(null, 0, new byte[0]);
                }
            }
        }
        MediaType mediaType = requestBuilder.contentType;
        Headers.Builder builder5 = requestBuilder.headersBuilder;
        if (mediaType != null) {
            if (requestBody != null) {
                requestBody = new RequestBuilder.ContentTypeOverridingRequestBody(requestBody, mediaType);
            } else {
                builder5.add("Content-Type", mediaType.mediaType);
            }
        }
        Request.Builder builder6 = requestBuilder.requestBuilder;
        builder6.url = httpUrl;
        builder5.getClass();
        builder6.headers = Jsoup.commonNewBuilder(Jsoup.commonBuild(builder5));
        builder6.method(requestBuilder.method, requestBody);
        builder6.tags = ((Okio__OkioKt) builder6.tags).plus(kotlin.jvm.internal.Reflection.factory.getOrCreateKotlinClass(Invocation.class), new Invocation(requestFactory.service, this.instance, requestFactory.method, arrayList));
        return new RealCall(this.callFactory, new Request(builder6));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // retrofit2.Call
    public final void enqueue(Callback callback) {
        RealCall realCall;
        Throwable th;
        synchronized (this) {
            try {
                if (this.executed) {
                    throw new IllegalStateException("Already executed.");
                }
                this.executed = true;
                realCall = this.rawCall;
                th = this.creationFailure;
                if (realCall == null && th == null) {
                    try {
                        RealCall createRawCall = createRawCall();
                        this.rawCall = createRawCall;
                        realCall = createRawCall;
                    } catch (Throwable th2) {
                        th = th2;
                        Utils.throwIfFatal(th);
                        this.creationFailure = th;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (th != null) {
            callback.onFailure(this, th);
            return;
        }
        if (this.canceled) {
            realCall.cancel();
        }
        realCall.enqueue(new AnonymousClass1(0, (Object) this, (Object) callback, (boolean) (0 == true ? 1 : 0)));
    }

    @Override // retrofit2.Call
    public final Response execute() {
        RealCall rawCall;
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already executed.");
            }
            this.executed = true;
            rawCall = getRawCall();
        }
        if (this.canceled) {
            rawCall.cancel();
        }
        return parseResponse(rawCall.execute());
    }

    public final RealCall getRawCall() {
        RealCall realCall = this.rawCall;
        if (realCall != null) {
            return realCall;
        }
        Throwable th = this.creationFailure;
        if (th != null) {
            if (th instanceof IOException) {
                throw ((IOException) th);
            }
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            throw ((Error) th);
        }
        try {
            RealCall createRawCall = createRawCall();
            this.rawCall = createRawCall;
            return createRawCall;
        } catch (IOException | Error | RuntimeException e) {
            Utils.throwIfFatal(e);
            this.creationFailure = e;
            throw e;
        }
    }

    @Override // retrofit2.Call
    public final boolean isCanceled() {
        boolean z = true;
        if (this.canceled) {
            return true;
        }
        synchronized (this) {
            try {
                RealCall realCall = this.rawCall;
                if (realCall == null || !realCall.canceled) {
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }

    public final Response parseResponse(okhttp3.Response response) {
        ResponseBody responseBody = response.body;
        Response.Builder newBuilder = response.newBuilder();
        newBuilder.body = new NoContentResponseBody(responseBody.contentType(), responseBody.contentLength());
        okhttp3.Response build = newBuilder.build();
        boolean z = build.isSuccessful;
        int i = build.code;
        if (i < 200 || i >= 300) {
            try {
                responseBody.source().readAll(new Buffer());
                responseBody.contentType();
                responseBody.contentLength();
                if (z) {
                    throw new IllegalArgumentException("rawResponse should not be successful response");
                }
                return new Response(build, null);
            } finally {
                responseBody.close();
            }
        }
        if (i == 204 || i == 205) {
            if (z) {
                return new Response(build, null);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("rawResponse must be successful response");
            return null;
        }
        ExceptionCatchingResponseBody exceptionCatchingResponseBody = new ExceptionCatchingResponseBody(responseBody);
        try {
            Object convert = this.responseConverter.convert(exceptionCatchingResponseBody);
            if (z) {
                return new Response(build, convert);
            }
            throw new IllegalArgumentException("rawResponse must be successful response");
        } catch (RuntimeException e) {
            IOException iOException = exceptionCatchingResponseBody.thrownException;
            if (iOException == null) {
                throw e;
            }
            throw iOException;
        }
    }

    @Override // retrofit2.Call
    public final synchronized Request request() {
        try {
        } catch (IOException e) {
            throw new RuntimeException("Unable to create request.", e);
        }
        return getRawCall().originalRequest;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: retrofit2.OkHttpCall$1, reason: invalid class name */
    public final class AnonymousClass1 implements ImageLoadListener, AvPlayer.Callback, MapLibreMap.CancelableCallback, MenuBuilder.Callback, CallAdapter, Callback, okhttp3.Callback, Converter {
        public final /* synthetic */ int $r8$classId;
        public final Object this$0;
        public final Object val$callback;

        public AnonymousClass1(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4) {
            this.$r8$classId = 5;
            this.val$callback = linearLayout;
            this.this$0 = linearLayout3;
        }

        @Override // retrofit2.CallAdapter
        public Object adapt(OkHttpCall okHttpCall) {
            Executor executor = (Executor) this.this$0;
            return executor == null ? okHttpCall : new DefaultCallAdapterFactory.ExecutorCallbackCall(executor, okHttpCall);
        }

        @Override // retrofit2.Converter
        public Object convert(Object obj) {
            ResponseBody responseBody = (ResponseBody) obj;
            responseBody.getClass();
            OptionalConverterFactory$OptionalConverter optionalConverterFactory$OptionalConverter = (OptionalConverterFactory$OptionalConverter) this.this$0;
            KSerializer kSerializer = (KSerializer) this.val$callback;
            return ((Json) optionalConverterFactory$OptionalConverter.delegate).decodeFromString(responseBody.string(), kSerializer);
        }

        @Override // org.wikipedia.views.imageservice.ImageLoadListener
        public void onError(Throwable th) {
            GalleryItemFragment galleryItemFragment = (GalleryItemFragment) this.this$0;
            GalleryItemFragment.Callback callback = galleryItemFragment.callback();
            if (callback != null) {
                Throwable fillInStackTrace = th.fillInStackTrace();
                if (fillInStackTrace == null) {
                    fillInStackTrace = new Throwable(galleryItemFragment.getString(R.string.error_message_generic));
                }
                ((GalleryActivity) callback).onError(fillInStackTrace);
            }
        }

        @Override // retrofit2.Callback
        public void onFailure(Call call, Throwable th) {
            ((DefaultCallAdapterFactory.ExecutorCallbackCall) this.this$0).callbackExecutor.execute(new Processor$$ExternalSyntheticLambda1(this, (Callback) this.val$callback, th, 12));
        }

        @Override // org.maplibre.android.maps.MapLibreMap.CancelableCallback
        public void onFinish() {
            Location location = (Location) this.this$0;
            PlacesFragment placesFragment = (PlacesFragment) this.val$callback;
            if (!placesFragment.isAdded() || location == null || placesFragment.getViewModel().highlightedPageTitle == null) {
                return;
            }
            PageTitle pageTitle = placesFragment.getViewModel().highlightedPageTitle;
            pageTitle.getClass();
            placesFragment.showLinkPreview(pageTitle, location);
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            ReadingListItemView.Callback callback;
            int i = this.$r8$classId;
            Object obj = this.val$callback;
            Object obj2 = this.this$0;
            switch (i) {
                case RADIO_COLUMN_VALUE:
                    menuItem.getClass();
                    BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                    ReadingListItemView readingListItemView = (ReadingListItemView) obj2;
                    Context context = readingListItemView.getContext();
                    context.getClass();
                    companion.getClass();
                    BreadCrumbLogEvent.Companion.logClick(context, menuItem);
                    ReadingList readingList = (ReadingList) obj;
                    if (readingList == null) {
                        return false;
                    }
                    int itemId = menuItem.getItemId();
                    if (itemId == R.id.menu_reading_list_rename) {
                        ReadingListItemView.Callback callback2 = readingListItemView.getCallback();
                        if (callback2 != null) {
                            callback2.onRename(readingList);
                        }
                    } else if (itemId == R.id.menu_reading_list_delete) {
                        ReadingListItemView.Callback callback3 = readingListItemView.getCallback();
                        if (callback3 != null) {
                            callback3.onDelete(readingList);
                        }
                    } else if (itemId == R.id.menu_reading_list_save_all_offline) {
                        ReadingListItemView.Callback callback4 = readingListItemView.getCallback();
                        if (callback4 != null) {
                            callback4.onSaveAllOffline(readingList);
                        }
                    } else if (itemId == R.id.menu_reading_list_remove_all_offline) {
                        ReadingListItemView.Callback callback5 = readingListItemView.getCallback();
                        if (callback5 != null) {
                            callback5.onRemoveAllOffline(readingList);
                        }
                    } else if (itemId == R.id.menu_reading_list_export) {
                        ReadingListsReceiveHelper readingListsReceiveHelper = ReadingListsReceiveHelper.INSTANCE$1;
                        Context context2 = readingListItemView.getContext();
                        context2.getClass();
                        readingListsReceiveHelper.exportLists((BaseActivity) context2, Room.listOf(readingList));
                    } else if (itemId == R.id.menu_reading_list_select) {
                        ReadingListItemView.Callback callback6 = readingListItemView.getCallback();
                        if (callback6 != null) {
                            callback6.onSelectList(readingList);
                        }
                    } else if (itemId == R.id.menu_reading_list_share) {
                        ReadingListItemView.Callback callback7 = readingListItemView.getCallback();
                        if (callback7 != null) {
                            callback7.onShare(readingList);
                        }
                    } else if (itemId == R.id.menu_reading_list_share) {
                        ReadingList readingList2 = readingListItemView.readingList;
                        if (readingList2 != null && (callback = readingListItemView.getCallback()) != null) {
                            callback.onShare(readingList2);
                        }
                    } else if (itemId == R.id.menu_customize) {
                        ReadingListItemView.Callback callback8 = readingListItemView.getCallback();
                        if (callback8 != null) {
                            callback8.onCustomize();
                        }
                    } else {
                        if (itemId != R.id.menu_about) {
                            return false;
                        }
                        ReadingListItemView.Callback callback9 = readingListItemView.getCallback();
                        if (callback9 != null) {
                            callback9.onAbout();
                        }
                    }
                    return true;
                default:
                    Context context3 = (Context) obj2;
                    TalkThreadItemView talkThreadItemView = (TalkThreadItemView) obj;
                    menuItem.getClass();
                    int itemId2 = menuItem.getItemId();
                    if (itemId2 == R.id.menu_talk_topic_share) {
                        TalkThreadItemView.Callback callback10 = talkThreadItemView.getCallback();
                        if (callback10 != null) {
                            ThreadItem threadItem = talkThreadItemView.item;
                            if (threadItem == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("item");
                                throw null;
                            }
                            TalkTopicActivity talkTopicActivity = TalkTopicActivity.this;
                            int i2 = TalkTopicActivity.$r8$clinit;
                            PageTitle copy$default = PageTitle.copy$default(talkTopicActivity.getViewModel().pageTitle);
                            copy$default.fragment = threadItem.id;
                            ShareUtil.shareText$default(talkTopicActivity, copy$default);
                        }
                    } else {
                        if (itemId2 != R.id.menu_copy_text) {
                            return false;
                        }
                        StringUtil stringUtil = StringUtil.INSTANCE;
                        ThreadItem threadItem2 = talkThreadItemView.item;
                        if (threadItem2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("item");
                            throw null;
                        }
                        Spanned fromHtml = StringUtil.fromHtml(StringUtil.removeStyleTags(threadItem2.html));
                        ClipboardManager clipboardManager = (ClipboardManager) context3.getSystemService(ClipboardManager.class);
                        if (clipboardManager != null) {
                            clipboardManager.setPrimaryClip(ClipData.newPlainText(null, fromHtml));
                        }
                        ShareUtil.showMessage((Activity) context3, R.string.text_copied);
                    }
                    return true;
            }
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
            int i = this.$r8$classId;
            menuBuilder.getClass();
        }

        @Override // okhttp3.Callback
        public void onResponse(RealCall realCall, okhttp3.Response response) {
            Callback callback = (Callback) this.val$callback;
            OkHttpCall okHttpCall = (OkHttpCall) this.this$0;
            try {
                try {
                    callback.onResponse(okHttpCall, okHttpCall.parseResponse(response));
                } catch (Throwable th) {
                    Utils.throwIfFatal(th);
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                Utils.throwIfFatal(th2);
                try {
                    callback.onFailure(okHttpCall, th2);
                } catch (Throwable th3) {
                    Utils.throwIfFatal(th3);
                    th3.printStackTrace();
                }
            }
        }

        @Override // org.wikipedia.views.imageservice.ImageLoadListener
        public void onSuccess(int i, int i2, Object obj) {
            int id = ((View) this.val$callback).getId();
            GalleryItemFragment galleryItemFragment = (GalleryItemFragment) this.this$0;
            GsonBuilder gsonBuilder = galleryItemFragment._binding;
            gsonBuilder.getClass();
            if (id == ((PhotoView) gsonBuilder.longSerializationPolicy).getId()) {
                GsonBuilder gsonBuilder2 = galleryItemFragment._binding;
                gsonBuilder2.getClass();
                ((PhotoView) gsonBuilder2.longSerializationPolicy).setVisibility(0);
                ((GalleryActivity) galleryItemFragment.requireActivity()).hideTransitionReceiver(true);
            }
        }

        @Override // retrofit2.CallAdapter
        public Type responseType() {
            return (Type) this.val$callback;
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2, boolean z) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.val$callback = obj2;
        }

        public /* synthetic */ AnonymousClass1(ViewGroup viewGroup, View view, View view2, int i) {
            this.$r8$classId = i;
            this.val$callback = view;
            this.this$0 = view2;
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.val$callback = obj;
            this.this$0 = obj2;
        }

        public AnonymousClass1(ScrollView scrollView, AppCompatImageView appCompatImageView, TextView textView, AppCompatImageView appCompatImageView2, TextView textView2, AppCompatImageView appCompatImageView3, LinearLayout linearLayout) {
            this.$r8$classId = 4;
            this.val$callback = textView;
            this.this$0 = textView2;
        }

        @Override // org.maplibre.android.maps.MapLibreMap.CancelableCallback
        public void onCancel() {
        }

        @Override // okhttp3.Callback
        public void onFailure(RealCall realCall, IOException iOException) {
            try {
                ((Callback) this.val$callback).onFailure((OkHttpCall) this.this$0, iOException);
            } catch (Throwable th) {
                Utils.throwIfFatal(th);
                th.printStackTrace();
            }
        }

        @Override // org.wikipedia.media.AvPlayer.Callback
        public void onError(int i, int i2) {
            ((AvPlayer.Callback) this.this$0).onError(i, i2);
        }

        public void onError() {
            Button button;
            AlertDialog alertDialog = ((ReadingListFragment) this.val$callback).previewSaveDialog;
            if (alertDialog == null || (button = alertDialog.mAlert.mButtonPositive) == null) {
                return;
            }
            button.setEnabled(false);
        }

        @Override // retrofit2.Callback
        public void onResponse(Call call, Response response) {
            ((DefaultCallAdapterFactory.ExecutorCallbackCall) this.this$0).callbackExecutor.execute(new Processor$$ExternalSyntheticLambda1(this, (Callback) this.val$callback, response, 11));
        }

        @Override // org.wikipedia.media.AvPlayer.Callback
        public void onSuccess() {
            AvPlayer avPlayer = (AvPlayer) ((AvPlayer) this.val$callback).player;
            AvPlayer.Callback callback = (AvPlayer.Callback) this.this$0;
            callback.getClass();
            MediaPlayerImplementation$CallbackWrapper mediaPlayerImplementation$CallbackWrapper = new MediaPlayerImplementation$CallbackWrapper(callback);
            MediaPlayer mediaPlayer = (MediaPlayer) avPlayer.player;
            mediaPlayer.setOnCompletionListener(mediaPlayerImplementation$CallbackWrapper);
            mediaPlayer.setOnErrorListener(mediaPlayerImplementation$CallbackWrapper);
            mediaPlayer.start();
        }
    }

    @Override // retrofit2.Call
    public final Call clone() {
        return new OkHttpCall(this.requestFactory, this.instance, this.args, this.callFactory, this.responseConverter);
    }
}
