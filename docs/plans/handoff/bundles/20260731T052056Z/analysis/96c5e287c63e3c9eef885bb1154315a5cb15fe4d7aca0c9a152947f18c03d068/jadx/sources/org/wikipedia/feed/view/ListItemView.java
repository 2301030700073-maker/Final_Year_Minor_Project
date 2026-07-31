package org.wikipedia.feed.view;

import android.content.Context;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.Room;
import coil3.util.BitmapsKt;
import com.google.android.material.imageview.ShapeableImageView;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.GraphView;
import org.wikipedia.views.PageItemView$$ExternalSyntheticLambda1;
import org.wikipedia.views.ViewUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ListItemView extends ConstraintLayout {
    public final MultipartBody.Builder binding;
    public Callback callback;
    public HistoryEntry historyEntry;
    public PageTitle title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onAddPageToList(HistoryEntry historyEntry, boolean z);

        void onMovePageToList(long j, HistoryEntry historyEntry);

        void onSelectPage(PageTitle pageTitle, HistoryEntry historyEntry, boolean z);

        void onSelectPage(PageTitle pageTitle, HistoryEntry historyEntry, Pair[] pairArr);
    }

    public ListItemView(Context context, int i) {
        super(context, null);
        LayoutInflater.from(context).inflate(R.layout.view_list_item, this);
        int i2 = R.id.view_list_card_item_graph;
        if (((GraphView) Room.findChildViewById(this, R.id.view_list_card_item_graph)) != null) {
            i2 = R.id.view_list_card_item_image;
            ShapeableImageView shapeableImageView = (ShapeableImageView) Room.findChildViewById(this, R.id.view_list_card_item_image);
            if (shapeableImageView != null) {
                i2 = R.id.view_list_card_item_pageviews;
                if (((TextView) Room.findChildViewById(this, R.id.view_list_card_item_pageviews)) != null) {
                    i2 = R.id.view_list_card_item_subtitle;
                    GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) Room.findChildViewById(this, R.id.view_list_card_item_subtitle);
                    if (goneIfEmptyTextView != null) {
                        i2 = R.id.view_list_card_item_title;
                        TextView textView = (TextView) Room.findChildViewById(this, R.id.view_list_card_item_title);
                        if (textView != null) {
                            this.binding = new MultipartBody.Builder(this, shapeableImageView, goneIfEmptyTextView, textView);
                            setFocusable(true);
                            setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                            setPadding(0, Okio__OkioKt.roundedDpToPx(16.0f), 0, Okio__OkioKt.roundedDpToPx(16.0f));
                            new View[]{this}[0].setOnContextClickListener(new DeviceUtil$$ExternalSyntheticLambda0());
                            TypedValue typedValue = new TypedValue();
                            typedValue = context.getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true) ? typedValue : null;
                            if (typedValue == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969940");
                                throw null;
                            }
                            setBackgroundResource(typedValue.resourceId);
                            setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(12, this, context));
                            setOnLongClickListener(new PageItemView$$ExternalSyntheticLambda1(2, this));
                            return;
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i2)));
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setViewsGreyedOut(boolean z) {
        float f = z ? 0.5f : 1.0f;
        MultipartBody.Builder builder = this.binding;
        ((TextView) builder.parts).setAlpha(f);
        ((GoneIfEmptyTextView) builder.type).setAlpha(f);
        ((ShapeableImageView) builder.boundary).setAlpha(f);
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final HistoryEntry getHistoryEntry() {
        return this.historyEntry;
    }

    public final void setHistoryEntry(HistoryEntry historyEntry) {
        this.historyEntry = historyEntry;
        StringUtil stringUtil = StringUtil.INSTANCE;
        setTitle(StringUtil.fromHtml(historyEntry.getTitle().getDisplayText()));
        setSubtitle(historyEntry.getTitle().description);
        setImage(historyEntry.getTitle().thumbUrl);
        CoroutineScope coroutineScope$default = BitmapsKt.coroutineScope$default(this);
        PageTitle title = historyEntry.getTitle();
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(18, this);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (Jsoup.getInstance().isOnline()) {
            onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.onFinish(true);
        } else {
            AwaitKt.launch$default(coroutineScope$default, new LoginClient$login$$inlined$CoroutineExceptionHandler$1(onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0), null, new PageActivity$onCreate$1$1$1(title, onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0, null, 19), 2);
        }
    }

    public final void setImage(String str) {
        MultipartBody.Builder builder = this.binding;
        if (str == null) {
            ((ShapeableImageView) builder.boundary).setVisibility(8);
        } else {
            ((ShapeableImageView) builder.boundary).setVisibility(0);
            ViewUtil.loadImage$default((ShapeableImageView) builder.boundary, str, null, 28);
        }
    }

    public final void setSubtitle(CharSequence charSequence) {
        ((GoneIfEmptyTextView) this.binding.type).setText(charSequence);
    }

    public final void setTitle(CharSequence charSequence) {
        ((TextView) this.binding.parts).setText(charSequence);
    }
}
