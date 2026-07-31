package org.wikipedia.page;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageFragment$$ExternalSyntheticLambda20 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PageFragment f$0;

    public /* synthetic */ PageFragment$$ExternalSyntheticLambda20(PageFragment pageFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = pageFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PageTitle pageTitle;
        String str;
        int i = this.$r8$classId;
        PageFragment pageFragment = this.f$0;
        switch (i) {
            case 0:
                int i2 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                if (pageFragment.isAdded()) {
                    pageFragment.getWebView().setScrollEventsEnabled(true);
                    break;
                }
                break;
            case 1:
                int i3 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                if (pageFragment.isAdded() && (pageTitle = (PageTitle) pageFragment.model.title) != null && (str = pageTitle.fragment) != null && str.length() != 0) {
                    String str2 = pageTitle.fragment;
                    str2.getClass();
                    pageFragment.scrollToSection(str2);
                    break;
                }
                break;
            default:
                if (pageFragment.isAdded()) {
                    pageFragment.requireActivity().getOnBackPressedDispatcher().onBackPressed();
                    break;
                }
                break;
        }
    }
}
