package org.wikipedia.gallery;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import androidx.core.app.ActivityOptionsCompat$ActivityOptionsCompatImpl;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.R;
import org.wikipedia.bridge.JavaScriptActionHandler$ImageHitInfo;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.page.linkpreview.LinkPreviewDialog$$ExternalSyntheticLambda3;
import org.wikipedia.settings.AppIconDialog;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0015\u0016\u0017B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\f\u0010\rR$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lorg/wikipedia/gallery/GalleryThumbnailScrollView;", "Landroidx/recyclerview/widget/RecyclerView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;", "list", "", "setGalleryList", "(Ljava/util/List;)V", "Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;", "listener", "Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;", "getListener", "()Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;", "setListener", "(Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;)V", "GalleryViewListener", "GalleryItemHolder", "AppIconAdapter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GalleryThumbnailScrollView extends RecyclerView {
    public GalleryViewListener listener;
    public final Animation pressAnimation;
    public final Animation releaseAnimation;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GalleryItemHolder extends RecyclerView.ViewHolder implements View.OnClickListener, View.OnTouchListener {
        public MwQueryPage galleryItem;
        public final ImageView imageView;

        public GalleryItemHolder(View view) {
            super(view);
            this.imageView = (ImageView) view.findViewById(R.id.gallery_thumbnail_image);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            GalleryViewListener listener;
            ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl;
            view.getClass();
            MwQueryPage mwQueryPage = this.galleryItem;
            if (mwQueryPage == null) {
                Intrinsics.throwUninitializedPropertyAccessException("galleryItem");
                throw null;
            }
            ImageInfo imageInfo = mwQueryPage.imageInfo();
            if (imageInfo == null || (listener = GalleryThumbnailScrollView.this.getListener()) == null) {
                return;
            }
            ImageView imageView = (ImageView) view;
            String str = imageInfo.thumbUrl;
            StringUtil stringUtil = StringUtil.INSTANCE;
            MwQueryPage mwQueryPage2 = this.galleryItem;
            if (mwQueryPage2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("galleryItem");
                throw null;
            }
            String addUnderscores = StringUtil.addUnderscores(mwQueryPage2.title);
            LinkPreviewDialog linkPreviewDialog = ((LinkPreviewDialog$$ExternalSyntheticLambda3) listener).f$0;
            str.getClass();
            if (imageView.getDrawable() != null) {
                GalleryActivity.TRANSITION_INFO = new JavaScriptActionHandler$ImageHitInfo(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, r1.getIntrinsicWidth(), r1.getIntrinsicHeight(), str);
                imageView.setTransitionName(linkPreviewDialog.requireActivity().getString(R.string.transition_page_gallery));
                activityOptionsCompat$ActivityOptionsCompatImpl = new ActivityOptionsCompat$ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(linkPreviewDialog.requireActivity(), imageView, linkPreviewDialog.requireActivity().getString(R.string.transition_page_gallery)));
            } else {
                activityOptionsCompat$ActivityOptionsCompatImpl = null;
            }
            Fragment.AnonymousClass10 anonymousClass10 = linkPreviewDialog.requestGalleryLauncher;
            JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo = GalleryActivity.TRANSITION_INFO;
            Context requireContext = linkPreviewDialog.requireContext();
            PageTitle pageTitle = linkPreviewDialog.getViewModel().pageTitle;
            WikiSite wikiSite = linkPreviewDialog.getViewModel().pageTitle.wikiSite;
            wikiSite.getClass();
            Intent putExtra = new Intent(requireContext, (Class<?>) GalleryActivity.class).putExtra("wikiSite", wikiSite).putExtra("title", pageTitle).putExtra("filename", addUnderscores).putExtra("revision", (Serializable) null);
            putExtra.getClass();
            anonymousClass10.launch(putExtra, activityOptionsCompat$ActivityOptionsCompatImpl);
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            view.getClass();
            motionEvent.getClass();
            int action = motionEvent.getAction();
            GalleryThumbnailScrollView galleryThumbnailScrollView = GalleryThumbnailScrollView.this;
            if (action == 0) {
                view.startAnimation(galleryThumbnailScrollView.pressAnimation);
                return false;
            }
            if (action != 1 && action != 3) {
                return false;
            }
            view.startAnimation(galleryThumbnailScrollView.releaseAnimation);
            return false;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface GalleryViewListener {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GalleryThumbnailScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.pressAnimation = AnimationUtils.loadAnimation(context, R.anim.thumbnail_item_press);
        this.releaseAnimation = AnimationUtils.loadAnimation(context, R.anim.thumbnail_item_release);
        setLayoutManager(new LinearLayoutManager(0));
    }

    public final GalleryViewListener getListener() {
        return this.listener;
    }

    public final void setGalleryList(List<MwQueryPage> list) {
        list.getClass();
        setAdapter(new AppIconDialog.AppIconAdapter(3, this, list));
    }

    public final void setListener(GalleryViewListener galleryViewListener) {
        this.listener = galleryViewListener;
    }
}
