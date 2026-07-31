package org.wikipedia.edit.insertmedia;

import android.text.TextUtils;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.FlowExtKt;
import androidx.paging.PageFetcher;
import androidx.paging.Pager$pageFetcher$2;
import androidx.paging.PagingConfig;
import androidx.room.Room;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import org.wikipedia.Constants;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InsertMediaViewModel extends ViewModel {
    public static final Map infoboxVarsByLang;
    public static final LinkedHashMap magicWords;
    public static String magicWordsLang;
    public String imagePosition;
    public String imageSize;
    public String imageType;
    public final ReadonlySharedFlow insertMediaFlow;
    public final Constants.InvokeSource invokeSource;
    public final String originalSearchQuery;
    public String searchQuery;
    public PageTitle selectedImage;
    public final String selectedImageSource;
    public final String selectedImageSourceProjects;
    public final WikiSite wikiSite;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class InfoboxVars {
        public final String imageAltParamName;
        public final String imageCaptionParamName;
        public final String imageParamName;
        public final String templateNameContains;

        public InfoboxVars(String str, String str2, String str3, String str4) {
            this.templateNameContains = str;
            this.imageParamName = str2;
            this.imageCaptionParamName = str3;
            this.imageAltParamName = str4;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class InfoboxVarsCollection {
        public final String[] possibleNameParamNames;
        public final List vars;

        public InfoboxVarsCollection(String[] strArr, List list) {
            this.possibleNameParamNames = strArr;
            this.vars = list;
        }
    }

    static {
        Map singletonMap = Collections.singletonMap("en", new InfoboxVarsCollection(new String[]{"name", "official_name", "species", "taxon", "drug_name", "image"}, Room.listOf((Object[]) new InfoboxVars[]{new InfoboxVars("taxobox", "image", "image_caption", "image_alt"), new InfoboxVars("chembox", "ImageFile", "ImageCaption", "ImageAlt"), new InfoboxVars("speciesbox", "image", "image_caption", "image_alt"), new InfoboxVars("infobox.*place", "image_skyline", "image_caption", "image_alt"), new InfoboxVars("infobox.*settlement", "image_skyline", "image_caption", "image_alt")})));
        singletonMap.getClass();
        infoboxVarsByLang = singletonMap;
        magicWordsLang = "";
        magicWords = new LinkedHashMap();
    }

    public InsertMediaViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("invokeSource");
        obj.getClass();
        this.invokeSource = (Constants.InvokeSource) obj;
        Object obj2 = savedStateHandle.get("wikiSite");
        obj2.getClass();
        WikiSite wikiSite = (WikiSite) obj2;
        this.wikiSite = wikiSite;
        StringUtil stringUtil = StringUtil.INSTANCE;
        Object obj3 = savedStateHandle.get("searchQuery");
        obj3.getClass();
        String removeHTMLTags = StringUtil.removeHTMLTags(StringsKt__StringsJVMKt.replace$default((String) obj3, "_", " "));
        this.searchQuery = removeHTMLTags;
        this.originalSearchQuery = removeHTMLTags;
        this.selectedImage = (PageTitle) savedStateHandle.get("imageTitle");
        String str = (String) savedStateHandle.get("imageSource");
        this.selectedImageSource = str == null ? "" : str;
        String str2 = (String) savedStateHandle.get("imageSourceProjects");
        this.selectedImageSourceProjects = str2 != null ? str2 : "";
        String str3 = (String) savedStateHandle.get("resultImagePos");
        int i = 1;
        if (str3 == null) {
            String str4 = wikiSite.languageCode;
            str4.getClass();
            str3 = TextUtils.getLayoutDirectionFromLocale(new Locale(str4)) == 1 ? "img_left" : "img_right";
        }
        this.imagePosition = str3;
        String str5 = (String) savedStateHandle.get("resultImageType");
        this.imageType = str5 == null ? "img_thumbnail" : str5;
        String str6 = (String) savedStateHandle.get("resultImageSize");
        this.imageSize = str6 == null ? "220x124" : str6;
        Continuation continuation = null;
        this.insertMediaFlow = FlowExtKt.cachedIn(new PageFetcher(new Pager$pageFetcher$2(0, new WikiGames$$ExternalSyntheticLambda0(7, this), continuation), new PagingConfig(10, 62)).flow, ViewModelKt.getViewModelScope(this));
        if (Intrinsics.areEqual(magicWordsLang, wikiSite.languageCode)) {
            return;
        }
        LinkedHashMap linkedHashMap = magicWords;
        linkedHashMap.put("img_none", "none");
        linkedHashMap.put("img_center", "center");
        linkedHashMap.put("img_left", "left");
        linkedHashMap.put("img_right", "right");
        linkedHashMap.put("img_thumbnail", "thumb");
        linkedHashMap.put("img_frameless", "frameless");
        linkedHashMap.put("img_framed", "frame");
        linkedHashMap.put("img_alt", "alt=$1");
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 9), null, new SyntaxHighlighter.AnonymousClass2(i, this, continuation), 2);
    }
}
