package org.wikipedia.page;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.DisplayMetrics;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.drawerlayout.widget.FixedDrawerLayout;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.ArticleTocInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.bridge.CommunicationBridge;
import org.wikipedia.databinding.ActivityPageBinding;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.ObservableWebView;
import org.wikipedia.views.PageScrollerView;
import org.wikipedia.views.SwipeableListView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SidePanelHandler implements ObservableWebView.OnClickListener, ObservableWebView.OnScrollChangeListener, ObservableWebView.OnContentHeightChangedListener {
    public ArticleTocInteractionEvent articleTocInteractionEvent;
    public final ActivityPageBinding binding;
    public final CommunicationBridge bridge;
    public int currentItemSelected;
    public final PageFragment fragment;
    public boolean rtl;
    public final FrameLayout.LayoutParams scrollerViewParams;
    public final PageFragment$$ExternalSyntheticLambda6 sectionOffsetsCallback;
    public final ToCAdapter tocAdapter;
    public final ObservableWebView webView;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.page.SidePanelHandler$3, reason: invalid class name */
    public final class AnonymousClass3 implements DrawerLayout.DrawerListener {
        public AnonymousClass3() {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ToCAdapter extends BaseAdapter {
        public int highlightedSection;
        public final ArrayList sections = new ArrayList();
        public final SparseIntArray sectionYOffsets = new SparseIntArray();

        public ToCAdapter() {
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.sections.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            Object obj = this.sections.get(i);
            obj.getClass();
            return (Section) obj;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            float f;
            PageFragment pageFragment = SidePanelHandler.this.fragment;
            viewGroup.getClass();
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_toc_entry, viewGroup, false);
            }
            Object obj = this.sections.get(i);
            obj.getClass();
            Section section = (Section) obj;
            int i2 = section.level;
            view.getClass();
            TextView textView = (TextView) view.findViewById(R.id.page_toc_item_text);
            View findViewById = view.findViewById(R.id.page_toc_item_bullet);
            StringUtil stringUtil = StringUtil.INSTANCE;
            textView.setText(StringUtil.fromHtml(StringUtil.removeStyleTags(section.title)));
            if (section.id == 0) {
                textView.setTypeface(Typeface.SERIF);
                f = 24.0f;
            } else if (i2 == 1) {
                textView.setTypeface(Typeface.SERIF);
                f = 18.0f;
            } else {
                textView.setTypeface(Typeface.SANS_SERIF);
                f = 14.0f;
            }
            textView.setTextSize(2, f);
            findViewById.getClass();
            ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
            if (layoutParams == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                return null;
            }
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            layoutParams2.topMargin = Okio__OkioKt.roundedDpToPx(f / 2.0f);
            findViewById.setLayoutParams(layoutParams2);
            if (this.highlightedSection == i) {
                Context requireContext = pageFragment.requireContext();
                TypedValue typedValue = new TypedValue();
                if (!requireContext.getTheme().resolveAttribute(R.attr.progressive_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue != null) {
                    textView.setTextColor(typedValue.data);
                    return view;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
                return null;
            }
            if (i2 > 1) {
                Context requireContext2 = pageFragment.requireContext();
                TypedValue typedValue2 = new TypedValue();
                if (!requireContext2.getTheme().resolveAttribute(R.attr.primary_color, typedValue2, true)) {
                    typedValue2 = null;
                }
                if (typedValue2 != null) {
                    textView.setTextColor(typedValue2.data);
                    return view;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969882");
                return null;
            }
            Context requireContext3 = pageFragment.requireContext();
            TypedValue typedValue3 = new TypedValue();
            if (!requireContext3.getTheme().resolveAttribute(R.attr.primary_color, typedValue3, true)) {
                typedValue3 = null;
            }
            if (typedValue3 != null) {
                textView.setTextColor(typedValue3.data);
                return view;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969882");
            return null;
        }
    }

    public SidePanelHandler(PageFragment pageFragment, CommunicationBridge communicationBridge) {
        communicationBridge.getClass();
        this.fragment = pageFragment;
        this.bridge = communicationBridge;
        ActivityPageBinding binding = ((PageActivity) pageFragment.requireActivity()).getBinding();
        this.binding = binding;
        this.scrollerViewParams = new FrameLayout.LayoutParams(Okio__OkioKt.roundedDpToPx(44.0f), Okio__OkioKt.roundedDpToPx(44.0f));
        ObservableWebView webView = pageFragment.getWebView();
        this.webView = webView;
        ToCAdapter toCAdapter = new ToCAdapter();
        this.tocAdapter = toCAdapter;
        this.sectionOffsetsCallback = new PageFragment$$ExternalSyntheticLambda6(4, this);
        SwipeableListView swipeableListView = (SwipeableListView) binding.tocList;
        swipeableListView.setAdapter((ListAdapter) toCAdapter);
        swipeableListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: org.wikipedia.page.SidePanelHandler$$ExternalSyntheticLambda1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                SidePanelHandler sidePanelHandler = SidePanelHandler.this;
                Object obj = sidePanelHandler.tocAdapter.sections.get(i);
                obj.getClass();
                Section section = (Section) obj;
                ObservableWebView observableWebView = sidePanelHandler.webView;
                int i2 = section.id;
                if (i2 == 0) {
                    observableWebView.setScrollY(0);
                } else {
                    CommunicationBridge communicationBridge2 = sidePanelHandler.bridge;
                    if (i2 == -1) {
                        Context context = observableWebView.getContext();
                        context.getClass();
                        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
                        communicationBridge2.execute("window.scrollTo(0, document.getElementById('pcs-footer-container-menu').offsetTop - " + (identifier > 0 ? Okio__OkioKt.getDimension(identifier) : RecyclerView.DECELERATION_RATE) + ");");
                    } else {
                        String str = section.anchor;
                        str.getClass();
                        communicationBridge2.execute("pcs.c1.Page.prepareForScrollToAnchor(\"" + StringsKt__StringsJVMKt.replace$default(str, "\"", "\\\"") + "\", { highlight: false } )");
                    }
                }
                sidePanelHandler.hide();
            }
        });
        swipeableListView.setListener(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(26, this));
        webView.onClickListeners.add(this);
        webView.onScrollChangeListeners.add(this);
        webView.onContentHeightChangedListeners.add(this);
        ((PageScrollerView) binding.pageScrollerButton).setCallback(new AvPlayer(16, this));
        FixedDrawerLayout fixedDrawerLayout = (FixedDrawerLayout) binding.navigationDrawer;
        AnonymousClass3 anonymousClass3 = new AnonymousClass3();
        ArrayList arrayList = fixedDrawerLayout.mListeners;
        if (arrayList == null) {
            arrayList = new ArrayList();
            fixedDrawerLayout.mListeners = arrayList;
        }
        arrayList.add(anonymousClass3);
        setScrollerPosition();
    }

    public final void hide() {
        ((FixedDrawerLayout) this.binding.navigationDrawer).closeDrawers(false);
        ArticleTocInteractionEvent articleTocInteractionEvent = this.articleTocInteractionEvent;
        if (articleTocInteractionEvent != null) {
            articleTocInteractionEvent.scrollStop();
        }
    }

    public final void log() {
        ArticleTocInteractionEvent articleTocInteractionEvent = this.articleTocInteractionEvent;
        if (articleTocInteractionEvent != null) {
            articleTocInteractionEvent.scrollStop();
            if (articleTocInteractionEvent.numSections == 0 || articleTocInteractionEvent.numOpens == 0) {
                return;
            }
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            EventPlatformClient.submit(new ArticleTocInteractionEvent.ArticleTocInteractionEventImpl(articleTocInteractionEvent.pageId, articleTocInteractionEvent.numOpens, articleTocInteractionEvent.numSectionClicks, articleTocInteractionEvent.totalOpenedSec, articleTocInteractionEvent.numSections, articleTocInteractionEvent.wikiDb));
        }
    }

    @Override // org.wikipedia.views.ObservableWebView.OnClickListener
    public final void onClick() {
        ActivityPageBinding activityPageBinding = this.binding;
        FixedDrawerLayout fixedDrawerLayout = (FixedDrawerLayout) activityPageBinding.navigationDrawer;
        FrameLayout frameLayout = (FrameLayout) activityPageBinding.sidePanelContainer;
        fixedDrawerLayout.getClass();
        if (DrawerLayout.isDrawerOpen(frameLayout)) {
            hide();
        }
    }

    @Override // org.wikipedia.views.ObservableWebView.OnContentHeightChangedListener
    public final void onContentHeightChanged(int i) {
        CommunicationBridge communicationBridge = this.fragment.bridge;
        if (communicationBridge == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        if (communicationBridge.isMetadataReady && communicationBridge.isPcsReady) {
            this.bridge.evaluate("pcs.c1.Sections.getOffsets(document.body);", this.sectionOffsetsCallback);
        }
    }

    @Override // org.wikipedia.views.ObservableWebView.OnScrollChangeListener
    public final void onScrollChanged(int i, int i2) {
        setScrollerPosition();
    }

    public final void onScrollerMoved(float f, boolean z) {
        ObservableWebView observableWebView = this.webView;
        int scrollY = observableWebView.getScrollY();
        int height = observableWebView.getHeight();
        float contentHeight = observableWebView.getContentHeight() * Okio__OkioKt.getDisplayMetrics().density;
        float toolbarHeightPx = ((f * contentHeight) / (height - (Okio__OkioKt.getToolbarHeightPx(this.fragment.requireContext()) * 2))) + scrollY;
        if (toolbarHeightPx < RecyclerView.DECELERATION_RATE) {
            toolbarHeightPx = 0.0f;
        } else {
            float f2 = contentHeight - height;
            if (toolbarHeightPx > f2) {
                toolbarHeightPx = f2;
            }
        }
        if (z) {
            observableWebView.scrollTo(0, (int) toolbarHeightPx);
        }
        int roundedPxToDp = Okio__OkioKt.roundedPxToDp((height / 2) + ((int) toolbarHeightPx));
        ToCAdapter toCAdapter = this.tocAdapter;
        int size = toCAdapter.sections.size();
        int i = 0;
        for (int i2 = 1; i2 < size; i2++) {
            Object obj = toCAdapter.sections.get(i2);
            obj.getClass();
            if (toCAdapter.sectionYOffsets.get(((Section) obj).id, 0) >= roundedPxToDp) {
                break;
            }
            i = i2;
        }
        int i3 = this.currentItemSelected;
        if (i != i3) {
            toCAdapter.highlightedSection = i;
            toCAdapter.notifyDataSetChanged();
            this.currentItemSelected = i;
        } else {
            i = i3;
        }
        ((SwipeableListView) this.binding.tocList).smoothScrollToPositionFromTop(i, this.scrollerViewParams.topMargin - Okio__OkioKt.roundedDpToPx(70.0f), 0);
    }

    public final void setEnabled(boolean z) {
        ActivityPageBinding activityPageBinding = this.binding;
        if (z) {
            setScrollerPosition();
            ((FixedDrawerLayout) activityPageBinding.navigationDrawer).setSlidingEnabled(true);
        } else {
            ((FixedDrawerLayout) activityPageBinding.navigationDrawer).closeDrawers(false);
            ((FixedDrawerLayout) activityPageBinding.navigationDrawer).setSlidingEnabled(false);
        }
    }

    public final void setScrollerPosition() {
        boolean z = this.rtl;
        int i = z ? 3 : 5;
        FrameLayout.LayoutParams layoutParams = this.scrollerViewParams;
        layoutParams.gravity = i;
        layoutParams.leftMargin = z ? Okio__OkioKt.roundedDpToPx(12.0f) : 0;
        layoutParams.rightMargin = this.rtl ? 0 : Okio__OkioKt.roundedDpToPx(12.0f);
        TypedArray obtainStyledAttributes = this.fragment.requireContext().getTheme().obtainStyledAttributes(new int[]{R.attr.actionBarSize});
        obtainStyledAttributes.getClass();
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        float height = this.webView.getHeight() - (dimensionPixelSize * 2);
        float scrollY = r3.getScrollY() / r3.getContentHeight();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        displayMetrics.getClass();
        int i2 = (int) (((scrollY / displayMetrics.density) * height) + dimensionPixelSize);
        layoutParams.topMargin = i2;
        if (i2 < dimensionPixelSize) {
            layoutParams.topMargin = dimensionPixelSize;
        }
        ((PageScrollerView) this.binding.pageScrollerButton).setLayoutParams(layoutParams);
    }
}
