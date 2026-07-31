package org.wikipedia.edit.insertmedia;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.ActionMode;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import java.util.regex.Pattern;
import kotlin.jvm.internal.Intrinsics;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.databinding.FragmentPlacesBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.ImageUrlUtil;
import org.wikipedia.views.FaceAndColorDetectImageView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class InsertMediaActivity$$ExternalSyntheticLambda4 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ PageTitle f$0;
    public final /* synthetic */ InsertMediaActivity f$1;

    public /* synthetic */ InsertMediaActivity$$ExternalSyntheticLambda4(InsertMediaActivity insertMediaActivity, PageTitle pageTitle) {
        this.f$1 = insertMediaActivity;
        this.f$0 = pageTitle;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i;
        int i2 = this.$r8$classId;
        PageTitle pageTitle = this.f$0;
        InsertMediaActivity insertMediaActivity = this.f$1;
        switch (i2) {
            case 0:
                int i3 = InsertMediaActivity.$r8$clinit;
                WikiSite.Companion companion = WikiSite.Companion;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                companion.getClass();
                pageTitle.wikiSite = WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode);
                Intent putExtra = new Intent(insertMediaActivity, (Class<?>) FilePageActivity.class).putExtra("title", pageTitle).putExtra("allowEdit", true);
                putExtra.getClass();
                insertMediaActivity.startActivity(putExtra);
                return;
            default:
                InsertMediaViewModel viewModel = insertMediaActivity.getViewModel();
                if (pageTitle.equals(insertMediaActivity.getViewModel().selectedImage)) {
                    pageTitle = null;
                }
                viewModel.selectedImage = pageTitle;
                ActionMode actionMode = insertMediaActivity.actionMode;
                if (actionMode != null) {
                    actionMode.finish();
                }
                FragmentPlacesBinding fragmentPlacesBinding = insertMediaActivity.binding;
                if (fragmentPlacesBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((AppBarLayout) fragmentPlacesBinding.viewButtonsGroup).setExpanded(true);
                PageTitle pageTitle2 = insertMediaActivity.getViewModel().selectedImage;
                FragmentPlacesBinding fragmentPlacesBinding2 = insertMediaActivity.binding;
                if (pageTitle2 != null) {
                    if (fragmentPlacesBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) fragmentPlacesBinding2.mapView;
                    if (faceAndColorDetectImageView.getTag() == null || !(faceAndColorDetectImageView.getTag() instanceof Integer)) {
                        i = 0;
                    } else {
                        Object tag = faceAndColorDetectImageView.getTag();
                        tag.getClass();
                        i = ((Integer) tag).intValue();
                    }
                    faceAndColorDetectImageView.setTag(Integer.valueOf(1 | i));
                    FragmentPlacesBinding fragmentPlacesBinding3 = insertMediaActivity.binding;
                    if (fragmentPlacesBinding3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    fragmentPlacesBinding3.controlsContainer.setVisibility(8);
                    FragmentPlacesBinding fragmentPlacesBinding4 = insertMediaActivity.binding;
                    if (fragmentPlacesBinding4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((FrameLayout) fragmentPlacesBinding4.myLocationButton).setVisibility(0);
                    FragmentPlacesBinding fragmentPlacesBinding5 = insertMediaActivity.binding;
                    if (fragmentPlacesBinding5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((LinearProgressIndicator) fragmentPlacesBinding5.listEmptyContainer).setVisibility(0);
                    FragmentPlacesBinding fragmentPlacesBinding6 = insertMediaActivity.binding;
                    if (fragmentPlacesBinding6 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    FaceAndColorDetectImageView faceAndColorDetectImageView2 = (FaceAndColorDetectImageView) fragmentPlacesBinding6.mapView;
                    Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
                    String str = pageTitle2.thumbUrl;
                    str.getClass();
                    Uri parse = Uri.parse(ImageUrlUtil.getUrlForPreferredSize(960, str));
                    parse.getClass();
                    faceAndColorDetectImageView2.loadImage(parse, new AvPlayer(3, insertMediaActivity));
                    FragmentPlacesBinding fragmentPlacesBinding7 = insertMediaActivity.binding;
                    if (fragmentPlacesBinding7 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((FrameLayout) fragmentPlacesBinding7.myLocationButton).setOnClickListener(new InsertMediaActivity$$ExternalSyntheticLambda4(pageTitle2, insertMediaActivity));
                } else {
                    if (fragmentPlacesBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    fragmentPlacesBinding2.controlsContainer.setVisibility(0);
                    FragmentPlacesBinding fragmentPlacesBinding8 = insertMediaActivity.binding;
                    if (fragmentPlacesBinding8 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((FrameLayout) fragmentPlacesBinding8.myLocationButton).setVisibility(8);
                }
                insertMediaActivity.invalidateOptionsMenu();
                CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = insertMediaActivity.insertMediaAdapter;
                if (categoryMembersAdapter != null) {
                    categoryMembersAdapter.notifyDataSetChanged();
                    return;
                }
                return;
        }
    }

    public /* synthetic */ InsertMediaActivity$$ExternalSyntheticLambda4(PageTitle pageTitle, InsertMediaActivity insertMediaActivity) {
        this.f$0 = pageTitle;
        this.f$1 = insertMediaActivity;
    }
}
