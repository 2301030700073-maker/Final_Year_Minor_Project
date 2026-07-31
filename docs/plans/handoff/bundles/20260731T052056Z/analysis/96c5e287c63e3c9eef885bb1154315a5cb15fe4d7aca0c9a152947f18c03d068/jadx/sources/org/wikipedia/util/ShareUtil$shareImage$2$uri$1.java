package org.wikipedia.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.util.Base64;
import android.widget.ScrollView;
import androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.node.NodeChain;
import androidx.core.content.FileProvider;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences$Key;
import androidx.glance.appwidget.GlanceAppWidgetManager;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.DialogNavigator;
import androidx.paging.PageFetcher$flow$1;
import androidx.paging.PagingData;
import androidx.room.Room;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.textfield.MaterialAutoCompleteTextView;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FileTreeWalk;
import kotlin.io.FileTreeWalk.FileTreeWalkIterator;
import kotlin.io.FileWalkDirection;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.url._UrlKt;
import okio.ByteString;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.captcha.CaptchaResult;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwException;
import org.wikipedia.dataclient.mwapi.MwServiceError;
import org.wikipedia.dataclient.okhttp.OkHttpConnectionFactory;
import org.wikipedia.descriptions.DescriptionEditFragment;
import org.wikipedia.descriptions.DescriptionEditFragment$onViewCreated$1;
import org.wikipedia.descriptions.DescriptionEditFragment$onViewCreated$1$1$2;
import org.wikipedia.edit.Edit;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.edit.EditSectionViewModel;
import org.wikipedia.edit.EditSectionViewModel$waitForRevisionUpdate$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.edit.EditSectionViewModel$waitForRevisionUpdate$2;
import org.wikipedia.edit.summaries.EditSummaryFragment;
import org.wikipedia.edit.summaries.EditSummaryHandler$2;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.tabs.Tab;
import org.wikipedia.random.RandomViewModel;
import org.wikipedia.search.SearchResult;
import org.wikipedia.search.SearchResults;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragmentViewModel;
import org.wikipedia.util.Resource;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShareUtil$shareImage$2$uri$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $bmp;
    public /* synthetic */ Object $context;
    public final /* synthetic */ Object $imageFileName;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareUtil$shareImage$2$uri$1(RandomViewModel randomViewModel, PageTitle pageTitle, Context context, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 8;
        this.$bmp = randomViewModel;
        this.$imageFileName = pageTitle;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$imageFileName;
        Object obj3 = this.$bmp;
        switch (i) {
            case 0:
                return new ShareUtil$shareImage$2$uri$1((Context) this.$context, (Bitmap) obj3, (String) obj2, continuation, 0);
            case 1:
                ShareUtil$shareImage$2$uri$1 shareUtil$shareImage$2$uri$1 = new ShareUtil$shareImage$2$uri$1((PointerInputScope) obj3, (TextDragObserver) obj2, continuation, 1);
                shareUtil$shareImage$2$uri$1.$context = obj;
                return shareUtil$shareImage$2$uri$1;
            case 2:
                ShareUtil$shareImage$2$uri$1 shareUtil$shareImage$2$uri$12 = new ShareUtil$shareImage$2$uri$1((String) obj2, (String) obj3, continuation);
                shareUtil$shareImage$2$uri$12.$context = obj;
                return shareUtil$shareImage$2$uri$12;
            case 3:
                return new ShareUtil$shareImage$2$uri$1((MutableState) this.$context, (DialogNavigator) obj3, (SnapshotStateList) obj2, continuation, 3);
            case 4:
                return new ShareUtil$shareImage$2$uri$1((LottieComposition) obj3, (Context) this.$context, (String) obj2, continuation);
            case 5:
                ShareUtil$shareImage$2$uri$1 shareUtil$shareImage$2$uri$13 = new ShareUtil$shareImage$2$uri$1((CategoryActivity.CategoryMembersAdapter) obj3, (PagingData) obj2, continuation, 5);
                shareUtil$shareImage$2$uri$13.$context = obj;
                return shareUtil$shareImage$2$uri$13;
            case 6:
                ShareUtil$shareImage$2$uri$1 shareUtil$shareImage$2$uri$14 = new ShareUtil$shareImage$2$uri$1((DescriptionEditFragment) obj3, (Bundle) obj2, continuation, 6);
                shareUtil$shareImage$2$uri$14.$context = obj;
                return shareUtil$shareImage$2$uri$14;
            case 7:
                ShareUtil$shareImage$2$uri$1 shareUtil$shareImage$2$uri$15 = new ShareUtil$shareImage$2$uri$1((EditSectionActivity) obj3, (CoroutineScope) obj2, continuation, 7);
                shareUtil$shareImage$2$uri$15.$context = obj;
                return shareUtil$shareImage$2$uri$15;
            case 8:
                return new ShareUtil$shareImage$2$uri$1((RandomViewModel) obj3, (PageTitle) obj2, (Context) this.$context, continuation);
            case 9:
                return new ShareUtil$shareImage$2$uri$1((ByteString.Companion) this.$context, (WikiSite) obj3, (String) obj2, continuation, 9);
            default:
                return new ShareUtil$shareImage$2$uri$1((Triple) this.$context, (WikiSite) obj3, (SuggestedEditsImageRecsFragmentViewModel) obj2, continuation, 10);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((ShareUtil$shareImage$2$uri$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((ShareUtil$shareImage$2$uri$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((ShareUtil$shareImage$2$uri$1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                ((ShareUtil$shareImage$2$uri$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 4:
                ((ShareUtil$shareImage$2$uri$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 5:
                ((ShareUtil$shareImage$2$uri$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 6:
                ((ShareUtil$shareImage$2$uri$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 7:
                ((ShareUtil$shareImage$2$uri$1) create((Resource) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 8:
                ((ShareUtil$shareImage$2$uri$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 9:
                return ((ShareUtil$shareImage$2$uri$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                ((ShareUtil$shareImage$2$uri$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        File file;
        File file2;
        FileTreeWalk.FileTreeWalkIterator fileTreeWalkIterator;
        Bitmap bitmap;
        SVGAndroidRenderer instrument;
        int i = this.$r8$classId;
        int i2 = 6;
        int i3 = 2;
        Unit unit = Unit.INSTANCE;
        int i4 = 0;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        Object[] objArr6 = 0;
        Object[] objArr7 = 0;
        Object[] objArr8 = 0;
        Object obj2 = this.$imageFileName;
        Object obj3 = this.$bmp;
        int i5 = 1;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Context context = (Context) this.$context;
                Bitmap bitmap2 = (Bitmap) obj3;
                String str = (String) obj2;
                try {
                    File cacheDir = context.getCacheDir();
                    cacheDir.getClass();
                    file = new File(cacheDir, "share");
                    FileWalkDirection fileWalkDirection = FileWalkDirection.BOTTOM_UP;
                    fileWalkDirection.getClass();
                    fileTreeWalkIterator = new FileTreeWalk(0, file, fileWalkDirection).new FileTreeWalkIterator();
                } catch (Throwable th) {
                    L.LEVEL_E.log(Modifier.CC.m("Caught ", th.getMessage()), th);
                    file = null;
                }
                while (true) {
                    Object[] objArr9 = true;
                    while (fileTreeWalkIterator.hasNext()) {
                        File file3 = (File) fileTreeWalkIterator.next();
                        if (file3.delete() || !file3.exists()) {
                            if (objArr9 != false) {
                                break;
                            }
                        }
                        objArr9 = false;
                    }
                    if (file == null) {
                        file2 = null;
                    } else {
                        file.mkdirs();
                        bitmap2.getClass();
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        bitmap2.compress(Bitmap.CompressFormat.JPEG, 85, byteArrayOutputStream);
                        Pattern compile = Pattern.compile("%2[0-9A-F]");
                        compile.getClass();
                        String replaceAll = compile.matcher(str).replaceAll("_");
                        replaceAll.getClass();
                        Pattern compile2 = Pattern.compile("[^0-9a-zA-Z-_.]");
                        compile2.getClass();
                        String replaceAll2 = compile2.matcher(replaceAll).replaceAll("_");
                        replaceAll2.getClass();
                        Pattern compile3 = Pattern.compile("_+");
                        compile3.getClass();
                        String replaceAll3 = compile3.matcher(replaceAll2).replaceAll("_");
                        replaceAll3.getClass();
                        if (!StringsKt__StringsJVMKt.endsWith(replaceAll3, ".jpg", false)) {
                            replaceAll3 = replaceAll3.concat(".jpg");
                        }
                        file2 = new File(file, replaceAll3);
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        try {
                            fileOutputStream.write(byteArrayOutputStream.toByteArray());
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                ResultKt.closeFinally(fileOutputStream, th2);
                                throw th3;
                            }
                        }
                    }
                    context.getClass();
                    if (file2 == null) {
                        return null;
                    }
                    FileProvider.SimplePathStrategy pathStrategy = FileProvider.getPathStrategy(0, context, "org.wikipedia.fileprovider");
                    try {
                        String canonicalPath = file2.getCanonicalPath();
                        Map.Entry entry = null;
                        for (Map.Entry entry2 : pathStrategy.mRoots.entrySet()) {
                            String path = ((File) entry2.getValue()).getPath();
                            if (FileProvider.removeTrailingSlash(canonicalPath).startsWith(FileProvider.removeTrailingSlash(path).concat("/")) && (entry == null || path.length() > ((File) entry.getValue()).getPath().length())) {
                                entry = entry2;
                            }
                        }
                        if (entry == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m("Failed to find configured root that contains ", canonicalPath));
                            return null;
                        }
                        String path2 = ((File) entry.getValue()).getPath();
                        return new Uri.Builder().scheme("content").authority(pathStrategy.mAuthority).encodedPath(Uri.encode((String) entry.getKey()) + '/' + Uri.encode(path2.endsWith("/") ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), "/")).build();
                    } catch (IOException unused) {
                        Gson$$ExternalSyntheticBUOutline0.m("Failed to resolve canonical path for ", file2);
                        return null;
                    }
                }
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.$context;
                CoroutineStart coroutineStart = CoroutineStart.UNDISPATCHED;
                PointerInputScope pointerInputScope = (PointerInputScope) obj3;
                TextDragObserver textDragObserver = (TextDragObserver) obj2;
                AwaitKt.launch$default(coroutineScope, null, coroutineStart, new CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1(pointerInputScope, textDragObserver, objArr2 == true ? 1 : 0, i5), 1);
                return AwaitKt.launch$default(coroutineScope, null, coroutineStart, new CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1(pointerInputScope, textDragObserver, objArr == true ? 1 : 0, i3), 1);
            case 2:
                ResultKt.throwOnFailure(obj);
                MutablePreferences mutablePreferences = (MutablePreferences) this.$context;
                MutablePreferences mutablePreferences2 = mutablePreferences.toMutablePreferences();
                String str2 = (String) obj2;
                String str3 = (String) obj3;
                Preferences$Key preferences$Key = GlanceAppWidgetManager.providersKey;
                Set set = (Set) mutablePreferences.get(preferences$Key);
                if (set == null) {
                    set = EmptySet.INSTANCE;
                }
                mutablePreferences2.setUnchecked$datastore_preferences_core(preferences$Key, UuidKt.plus(set, str2));
                GlanceAppWidgetManager.Companion companion = GlanceAppWidgetManager.Companion;
                KProperty[] kPropertyArr = GlanceAppWidgetManager.Companion.$$delegatedProperties;
                companion.getClass();
                mutablePreferences2.setUnchecked$datastore_preferences_core(GlanceAppWidgetManager.Companion.providerKey(str2), str3);
                return mutablePreferences2.toPreferences();
            case 3:
                ResultKt.throwOnFailure(obj);
                DialogNavigator dialogNavigator = (DialogNavigator) obj3;
                SnapshotStateList snapshotStateList = (SnapshotStateList) obj2;
                for (NavBackStackEntry navBackStackEntry : (Set) ((MutableState) this.$context).getValue()) {
                    if (!((List) dialogNavigator.getState().backStack.$$delegate_0.getValue()).contains(navBackStackEntry) && !snapshotStateList.contains(navBackStackEntry)) {
                        dialogNavigator.getState().markTransitionComplete(navBackStackEntry);
                    }
                }
                return unit;
            case 4:
                ResultKt.throwOnFailure(obj);
                for (LottieImageAsset lottieImageAsset : ((HashMap) ((LottieComposition) obj3).getImages()).values()) {
                    lottieImageAsset.getClass();
                    String str4 = lottieImageAsset.fileName;
                    if (lottieImageAsset.bitmap == null && StringsKt__StringsJVMKt.startsWith(str4, "data:", false) && StringsKt.indexOf$default(str4, "base64,", 0, false, 6) > 0) {
                        try {
                            byte[] decode = Base64.decode(str4.substring(StringsKt.indexOf$default(str4, ',', 0, 6) + 1), 0);
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inScaled = true;
                            options.inDensity = 160;
                            lottieImageAsset.bitmap = BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
                        } catch (IllegalArgumentException e) {
                            Logger.warning("data URL did not have correct base64 format.", e);
                        }
                    }
                    Context context2 = (Context) this.$context;
                    String str5 = (String) obj2;
                    if (lottieImageAsset.bitmap == null && str5 != null) {
                        try {
                            InputStream open = context2.getAssets().open(str5 + str4);
                            open.getClass();
                            try {
                                BitmapFactory.Options options2 = new BitmapFactory.Options();
                                options2.inScaled = true;
                                options2.inDensity = 160;
                                bitmap = BitmapFactory.decodeStream(open, null, options2);
                            } catch (IllegalArgumentException e2) {
                                Logger.warning("Unable to decode image.", e2);
                                bitmap = null;
                            }
                            if (bitmap != null) {
                                lottieImageAsset.bitmap = Utils.resizeBitmapIfNeeded(bitmap, lottieImageAsset.width, lottieImageAsset.height);
                            }
                        } catch (IOException e3) {
                            Logger.warning("Unable to open asset.", e3);
                        }
                    }
                }
                return unit;
            case 5:
                CoroutineScope coroutineScope2 = (CoroutineScope) this.$context;
                ResultKt.throwOnFailure(obj);
                CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = (CategoryActivity.CategoryMembersAdapter) obj3;
                if (categoryMembersAdapter.submitCompleted) {
                    AwaitKt.async$default(coroutineScope2, null, new PageFetcher$flow$1(categoryMembersAdapter, (PagingData) obj2, objArr3 == true ? 1 : 0, 28), 3);
                }
                return unit;
            case 6:
                CoroutineScope coroutineScope3 = (CoroutineScope) this.$context;
                ResultKt.throwOnFailure(obj);
                DescriptionEditFragment descriptionEditFragment = (DescriptionEditFragment) obj3;
                AwaitKt.launch$default(coroutineScope3, null, null, new DescriptionEditFragment$onViewCreated$1(descriptionEditFragment, (Bundle) obj2, objArr7 == true ? 1 : 0, i5), 3);
                AwaitKt.launch$default(coroutineScope3, null, null, new DescriptionEditFragment$onViewCreated$1$1$2(descriptionEditFragment, objArr6 == true ? 1 : 0, i4), 3);
                AwaitKt.launch$default(coroutineScope3, null, null, new PageActivity$onCreate$1$1$1(i2, descriptionEditFragment, objArr5 == true ? 1 : 0), 3);
                AwaitKt.launch$default(coroutineScope3, null, null, new DescriptionEditFragment$onViewCreated$1$1$2(descriptionEditFragment, objArr4 == true ? 1 : 0, i5), 3);
                return unit;
            case 7:
                EditSectionActivity editSectionActivity = (EditSectionActivity) obj3;
                Resource resource = (Resource) this.$context;
                ResultKt.throwOnFailure(obj);
                if (resource instanceof Resource.Loading) {
                    editSectionActivity.showProgressBar$1(true);
                    ActivityLoginBinding activityLoginBinding = editSectionActivity.binding;
                    if (activityLoginBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((ScrollView) activityLoginBinding.loginButton).setVisibility(8);
                    CaptchaHandler captchaHandler = editSectionActivity.captchaHandler;
                    if (captchaHandler == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                        throw null;
                    }
                    captchaHandler.hideCaptcha();
                    EditSummaryFragment editSummaryFragment = editSectionActivity.editSummaryFragment;
                    if (editSummaryFragment == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("editSummaryFragment");
                        throw null;
                    }
                    NodeChain nodeChain = editSummaryFragment._binding;
                    nodeChain.getClass();
                    if (((MaterialAutoCompleteTextView) nodeChain.innerCoordinator).length() > 0) {
                        MultipartBody.Builder builder = editSummaryFragment.editSummaryHandler;
                        if (builder == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("editSummaryHandler");
                            throw null;
                        }
                        AwaitKt.launch$default((LifecycleCoroutineScopeImpl) builder.boundary, null, null, new EditSummaryHandler$2(builder, objArr8 == true ? 1 : 0, i5), 3);
                    }
                } else if (resource instanceof Resource.Success) {
                    Edit.Result result = ((Edit) ((Resource.Success) resource).data).edit;
                    if (result == null) {
                        IOException iOException = new IOException("An unknown error occurred.");
                        int i6 = EditSectionActivity.$r8$clinit;
                        editSectionActivity.onEditFailure(iOException);
                    } else if ("Success".equals(result.status)) {
                        if (!Headers.Companion.isLoggedIn()) {
                            Prefs prefs = Prefs.INSTANCE;
                            PrefsIoUtil.setLong(new Date().getTime(), R.string.preference_key_last_anon_edit_time);
                        }
                        int i7 = EditSectionActivity.$r8$clinit;
                        EditSectionViewModel viewModel = editSectionActivity.getViewModel();
                        long j = result.newRevId;
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new EditSectionViewModel$waitForRevisionUpdate$$inlined$CoroutineExceptionHandler$1(viewModel, j), null, new EditSectionViewModel$waitForRevisionUpdate$2(j, viewModel, (Continuation) null), 2);
                    } else {
                        Edit.Captcha captcha = result.captcha;
                        if (captcha != null) {
                            String str6 = captcha != null ? captcha.id : null;
                            if (str6 == null) {
                                str6 = "";
                            }
                            CaptchaResult captchaResult = new CaptchaResult(str6);
                            int i8 = EditSectionActivity.$r8$clinit;
                            editSectionActivity.onEditSuccess(captchaResult);
                        } else {
                            String str7 = result.spamblacklist;
                            String str8 = result.code;
                            if (str7 != null) {
                                MwException mwException = new MwException(new MwServiceError(str8, str7));
                                int i9 = EditSectionActivity.$r8$clinit;
                                editSectionActivity.onEditFailure(mwException);
                            } else if (str8 != null) {
                                MwException mwException2 = new MwException(new MwServiceError(str8, result.info));
                                int i10 = EditSectionActivity.$r8$clinit;
                                editSectionActivity.onEditFailure(mwException2);
                            } else {
                                IOException iOException2 = new IOException("Received unrecognized edit response");
                                int i11 = EditSectionActivity.$r8$clinit;
                                editSectionActivity.onEditFailure(iOException2);
                            }
                        }
                    }
                } else if (resource instanceof Resource.Error) {
                    Throwable th4 = ((Resource.Error) resource).throwable;
                    int i12 = EditSectionActivity.$r8$clinit;
                    editSectionActivity.onEditFailure(th4);
                }
                return unit;
            case 8:
                ResultKt.throwOnFailure(obj);
                RandomViewModel randomViewModel = (RandomViewModel) obj3;
                PageTitle pageTitle = (PageTitle) obj2;
                randomViewModel.currentTitle = pageTitle;
                randomViewModel.refreshSaveState();
                if (pageTitle != null && (instrument = ContextKt.getInstrument((Context) this.$context)) != null) {
                    DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda1 = TestKitchenAdapter.flushEventsRunnable;
                    SVGAndroidRenderer.submitInteraction$default(instrument, "impression", null, null, null, TestKitchenAdapter.getPageData$default(pageTitle), null, 222);
                }
                return unit;
            case 9:
                ResultKt.throwOnFailure(obj);
                WikiSite wikiSite = (WikiSite) obj3;
                String str9 = (String) obj2;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                Iterator it = Jsoup.getInstance().tabList.iterator();
                while (it.hasNext()) {
                    PageTitle backStackPositionTitle = ((Tab) it.next()).getBackStackPositionTitle();
                    if (backStackPositionTitle != null && wikiSite.equals(backStackPositionTitle.wikiSite)) {
                        StringUtil stringUtil = StringUtil.INSTANCE;
                        if (StringsKt.contains(StringUtil.fromHtml(backStackPositionTitle.getDisplayText()), str9, true)) {
                            return new SearchResults(2, Room.mutableListOf(new SearchResult(backStackPositionTitle, SearchResult.SearchResultType.TAB_LIST, 0)));
                        }
                    }
                }
                return new SearchResults(3, null);
            default:
                SuggestedEditsImageRecsFragmentViewModel suggestedEditsImageRecsFragmentViewModel = (SuggestedEditsImageRecsFragmentViewModel) obj2;
                ResultKt.throwOnFailure(obj);
                try {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    String str10 = (String) ((Triple) this.$context).first;
                    str10.getClass();
                    arrayList.add(_UrlKt.canonicalizeWithCharset$default("wikitext", 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", false, false, false, false, 91));
                    arrayList2.add(_UrlKt.canonicalizeWithCharset$default(str10, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", false, false, false, false, 91));
                    FormBody formBody = new FormBody(arrayList, arrayList2);
                    L.d("Requesting preview with image inserted into infobox...");
                    Request.Builder builder2 = new Request.Builder(0);
                    ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
                    String restBasePath = ServiceFactory.getRestBasePath((WikiSite) obj3);
                    try {
                        String encode = URLEncoder.encode(suggestedEditsImageRecsFragmentViewModel.getPageTitle().getPrefixedText(), "UTF-8");
                        encode.getClass();
                        builder2.url(restBasePath + "transform/wikitext/to/mobile-html/" + StringsKt__StringsJVMKt.replace$default(encode, "+", "%20"));
                        builder2.method("POST", formBody);
                        Request request = new Request(builder2);
                        OkHttpClient okHttpClient = OkHttpConnectionFactory.client;
                        okHttpClient.getClass();
                        Response execute = new RealCall(okHttpClient, request).execute();
                        try {
                            String string = execute.body.string();
                            suggestedEditsImageRecsFragmentViewModel.attemptInsertInfobox = true;
                            if (StringsKt.contains(string, "with unknown parameter", true)) {
                                L.d("Preview contains error, so no longer inserting into infobox.");
                                suggestedEditsImageRecsFragmentViewModel.attemptInsertInfobox = false;
                            }
                            execute.close();
                        } finally {
                        }
                    } catch (UnsupportedEncodingException e4) {
                        throw new RuntimeException(e4);
                    }
                } catch (IOException e5) {
                    L.e(e5);
                }
                return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ShareUtil$shareImage$2$uri$1(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$context = obj;
        this.$bmp = obj2;
        this.$imageFileName = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ShareUtil$shareImage$2$uri$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$bmp = obj;
        this.$imageFileName = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareUtil$shareImage$2$uri$1(String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.$imageFileName = str;
        this.$bmp = str2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareUtil$shareImage$2$uri$1(LottieComposition lottieComposition, Context context, String str, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 4;
        this.$bmp = lottieComposition;
        this.$context = context;
        this.$imageFileName = str;
    }
}
