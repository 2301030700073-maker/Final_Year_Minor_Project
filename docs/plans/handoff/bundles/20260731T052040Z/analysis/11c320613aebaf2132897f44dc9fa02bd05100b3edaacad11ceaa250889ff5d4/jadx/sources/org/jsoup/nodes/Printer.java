package org.jsoup.nodes;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.compose.ui.node.Owner;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.preference.PreferenceManager;
import androidx.sqlite.SQLite;
import androidx.viewbinding.ViewBinding;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.ClassReference;
import okio.Options;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.select.NodeVisitor;
import org.koin.core.Koin;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.qualifier.Qualifier;
import org.koin.ext.KClassExtKt;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.Stream;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.helper.PlayerDataSource;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.mediaitem.StreamInfoTag;
import org.schabi.newpipe.player.resolver.PlaybackResolver$ResolverException;
import org.schabi.newpipe.settings.preferencesearch.PreferenceFuzzySearchFunction;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchItem;
import org.schabi.newpipe.util.ListHelper;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda21;
import org.schabi.newpipe.views.FocusAwareDrawerLayout;
import org.schabi.newpipe.views.NewPipeEditText;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Printer implements NodeVisitor, ViewBinding {
    public final /* synthetic */ int $r8$classId;
    public Object accum;
    public Object root;
    public Object settings;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class Pretty extends Printer {
        public boolean preserveWhitespace;

        public static boolean isBlankText(Node node) {
            return (node instanceof TextNode) && StringUtil.isBlank(((TextNode) node).coreValue());
        }

        @Override // org.jsoup.nodes.Printer
        public final void addHead(Element element, int i) {
            if (shouldIndent(element)) {
                indent(i);
            }
            element.outerHtmlHead((QuietAppendable$BaseAppendable) this.accum, (Document.OutputSettings) this.settings);
            if (element.tag.is(64)) {
                this.preserveWhitespace = true;
            }
        }

        @Override // org.jsoup.nodes.Printer
        public final void addNode(LeafNode leafNode, int i) {
            if (shouldIndent(leafNode)) {
                indent(i);
            }
            leafNode.outerHtmlHead((QuietAppendable$BaseAppendable) this.accum, (Document.OutputSettings) this.settings);
        }

        @Override // org.jsoup.nodes.Printer
        public final void addTail(Element element, int i) {
            Node firstChild = element.firstChild();
            while (isBlankText(firstChild)) {
                firstChild = firstChild.nextSibling();
            }
            if (shouldIndent(firstChild)) {
                indent(i);
            }
            element.outerHtmlTail((QuietAppendable$BaseAppendable) this.accum, (Document.OutputSettings) this.settings);
            if (this.preserveWhitespace && element.tag.is(64)) {
                do {
                    element = element.parentNode;
                    if (element == null) {
                        this.preserveWhitespace = false;
                        return;
                    }
                } while ((element.tag.options & 64) == 0);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x005a, code lost:
        
            if (org.jsoup.internal.StringUtil.isWhitespace(((org.jsoup.nodes.LeafNode) r2).coreValue().codePointAt(0)) != false) goto L30;
         */
        @Override // org.jsoup.nodes.Printer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void addText(org.jsoup.nodes.TextNode r5, int r6, int r7) {
            /*
                r4 = this;
                boolean r6 = r4.preserveWhitespace
                r0 = 0
                if (r6 != 0) goto L7a
                org.jsoup.nodes.Element r6 = r5.parentNode
                boolean r6 = r4.isBlockEl(r6)
                r1 = 4
                if (r6 != 0) goto L10
            Le:
                r0 = r1
                goto L5f
            L10:
                org.jsoup.nodes.Node r6 = r5.previousSibling()
                org.jsoup.nodes.Node r2 = r5.nextSibling()
                boolean r3 = r6 instanceof org.jsoup.nodes.Element
                if (r3 == 0) goto L22
                boolean r3 = r4.isBlockEl(r6)
                if (r3 == 0) goto L30
            L22:
                if (r6 == 0) goto L2e
                boolean r3 = r6 instanceof org.jsoup.nodes.TextNode
                if (r3 != 0) goto L30
                boolean r6 = r4.shouldIndent(r6)
                if (r6 == 0) goto L30
            L2e:
                r1 = 12
            L30:
                if (r2 == 0) goto L5c
                boolean r6 = r2 instanceof org.jsoup.nodes.TextNode
                if (r6 != 0) goto L3d
                boolean r6 = r4.shouldIndent(r2)
                if (r6 == 0) goto L3d
                goto L5c
            L3d:
                boolean r6 = isBlankText(r2)
                if (r6 == 0) goto L48
                org.jsoup.nodes.Node r2 = r2.nextSibling()
                goto L3d
            L48:
                boolean r6 = r2 instanceof org.jsoup.nodes.TextNode
                if (r6 == 0) goto Le
                org.jsoup.nodes.LeafNode r2 = (org.jsoup.nodes.LeafNode) r2
                java.lang.String r6 = r2.coreValue()
                int r6 = r6.codePointAt(r0)
                boolean r6 = org.jsoup.internal.StringUtil.isWhitespace(r6)
                if (r6 == 0) goto Le
            L5c:
                r6 = r1 | 16
                r0 = r6
            L5f:
                java.lang.String r6 = r5.coreValue()
                boolean r6 = org.jsoup.internal.StringUtil.isBlank(r6)
                if (r6 != 0) goto L7a
                org.jsoup.nodes.Element r6 = r5.parentNode
                boolean r6 = r4.isBlockEl(r6)
                if (r6 == 0) goto L7a
                boolean r6 = r4.shouldIndent(r5)
                if (r6 == 0) goto L7a
                r4.indent(r7)
            L7a:
                super.addText(r5, r0, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.Printer.Pretty.addText(org.jsoup.nodes.TextNode, int, int):void");
        }

        public boolean isBlockEl(Node node) {
            if (node != null && (node instanceof Element)) {
                Element element = (Element) node;
                if (!element.nameIs("br") && !element.isBlock()) {
                    if ((element.tag.options & 1) == 0) {
                        if (!(element.parentNode instanceof Document)) {
                            Element firstElementChild = element.firstElementChild();
                            for (int i = 0; i < 5 && firstElementChild != null; i++) {
                                if (!firstElementChild.isBlock() && (firstElementChild.tag.options & 1) != 0) {
                                    firstElementChild = firstElementChild.nextElementSibling();
                                }
                            }
                        }
                    }
                }
                return true;
            }
            return false;
        }

        public boolean shouldIndent(Node node) {
            if (node != null && node != ((Node) this.root) && !this.preserveWhitespace && !isBlankText(node)) {
                if (isBlockEl(node)) {
                    return true;
                }
                Node previousSibling = node.previousSibling();
                while (isBlankText(previousSibling)) {
                    previousSibling = previousSibling.previousSibling();
                }
                if (isBlockEl(previousSibling)) {
                    return true;
                }
                Element element = node.parentNode;
                if (isBlockEl(element) && !element.tag.is(8)) {
                    Node firstChild = element.firstChild();
                    int i = 0;
                    while (true) {
                        if (i >= 5 || firstChild == null) {
                            break;
                        }
                        if (!(firstChild instanceof TextNode)) {
                            if (previousSibling == null) {
                                return true;
                            }
                            if ((previousSibling instanceof TextNode) || (!isBlockEl(previousSibling) && (previousSibling instanceof Element))) {
                                break;
                            }
                            return true;
                        }
                        firstChild = firstChild.nextSibling();
                        i++;
                    }
                }
            }
            return false;
        }
    }

    public Printer() {
        this.$r8$classId = 14;
        this.root = new PreferenceFuzzySearchFunction();
        int i = 0;
        ArrayList arrayList = new ArrayList(1);
        Object obj = new Object[]{"PreferenceCategory"}[0];
        this.accum = Owner.CC.m(obj, arrayList, obj, arrayList);
        Object[] objArr = {"PreferenceCategory", "PreferenceScreen"};
        ArrayList arrayList2 = new ArrayList(2);
        while (i < 2) {
            Object obj2 = objArr[i];
            i = RecordTag.m(obj2, arrayList2, obj2, i, 1);
        }
        this.settings = DesugarCollections.unmodifiableList(arrayList2);
    }

    public static Printer bind(View view) {
        int i = R.id.toolbar;
        Toolbar toolbar = (Toolbar) Options.Companion.findChildViewById(R.id.toolbar, view);
        if (toolbar != null) {
            i = R.id.toolbar_search_container;
            View findChildViewById = Options.Companion.findChildViewById(R.id.toolbar_search_container, view);
            if (findChildViewById != null) {
                return new Printer(10, (LinearLayout) view, toolbar, bind$1(findChildViewById));
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static Printer bind$1(View view) {
        int i = R.id.toolbar_search_clear;
        FrameLayout frameLayout = (FrameLayout) Options.Companion.findChildViewById(R.id.toolbar_search_clear, view);
        if (frameLayout != null) {
            i = R.id.toolbar_search_clear_icon;
            if (((ImageView) Options.Companion.findChildViewById(R.id.toolbar_search_clear_icon, view)) != null) {
                i = R.id.toolbar_search_edit_text;
                NewPipeEditText newPipeEditText = (NewPipeEditText) Options.Companion.findChildViewById(R.id.toolbar_search_edit_text, view);
                if (newPipeEditText != null) {
                    return new Printer(11, (FrameLayout) view, frameLayout, newPipeEditText);
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static String getAttribute(XmlResourceParser xmlResourceParser, String str) {
        String attributeValue = xmlResourceParser.getAttributeValue("http://schemas.android.com/apk/preferencesearch", str);
        return attributeValue != null ? attributeValue : xmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", str);
    }

    public static Printer inflate(LayoutInflater layoutInflater, LinearLayout linearLayout) {
        View inflate = layoutInflater.inflate(R.layout.item_metadata, (ViewGroup) linearLayout, false);
        int i = R.id.metadata_content_view;
        NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.metadata_content_view, inflate);
        if (newPipeTextView != null) {
            i = R.id.metadata_type_view;
            NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.metadata_type_view, inflate);
            if (newPipeTextView2 != null) {
                return new Printer(7, (ConstraintLayout) inflate, newPipeTextView, newPipeTextView2);
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    public void addHead(Element element, int i) {
        element.outerHtmlHead((QuietAppendable$BaseAppendable) this.accum, (Document.OutputSettings) this.settings);
    }

    public void addNode(LeafNode leafNode, int i) {
        leafNode.outerHtmlHead((QuietAppendable$BaseAppendable) this.accum, (Document.OutputSettings) this.settings);
    }

    public void addTail(Element element, int i) {
        element.outerHtmlTail((QuietAppendable$BaseAppendable) this.accum, (Document.OutputSettings) this.settings);
    }

    public void addText(TextNode textNode, int i, int i2) {
        QuietAppendable$BaseAppendable quietAppendable$BaseAppendable = (QuietAppendable$BaseAppendable) this.accum;
        String coreValue = textNode.coreValue();
        Document.OutputSettings outputSettings = (Document.OutputSettings) this.settings;
        Entities.doEscape(coreValue, quietAppendable$BaseAppendable, outputSettings.escapeMode, outputSettings.charset, i | 1);
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        switch (this.$r8$classId) {
            case 3:
                return (FocusAwareDrawerLayout) this.root;
            case 4:
                return (RelativeLayout) this.root;
            case 5:
                return (LinearLayout) this.root;
            case 6:
                return (RelativeLayout) this.root;
            case 7:
                return (ConstraintLayout) this.root;
            case 8:
                return (RelativeLayout) this.root;
            case 9:
                return (LinearLayout) this.root;
            case 10:
                return (LinearLayout) this.root;
            default:
                return (FrameLayout) this.root;
        }
    }

    @Override // org.jsoup.select.NodeVisitor
    public void head(Node node, int i) {
        if (node.getClass() == TextNode.class) {
            addText((TextNode) node, 0, i);
        } else if (node instanceof Element) {
            addHead((Element) node, i);
        } else {
            addNode((LeafNode) node, i);
        }
    }

    public void indent(int i) {
        String valueOf;
        QuietAppendable$BaseAppendable append = ((QuietAppendable$BaseAppendable) this.accum).append('\n');
        Document.OutputSettings outputSettings = (Document.OutputSettings) this.settings;
        int i2 = i * outputSettings.indentAmount;
        int i3 = outputSettings.maxPaddingWidth;
        String[] strArr = StringUtil.padding;
        SQLite.isTrue("width must be >= 0", i2 >= 0);
        SQLite.isTrue(i3 >= -1);
        if (i3 != -1) {
            i2 = Math.min(i2, i3);
        }
        String[] strArr2 = StringUtil.padding;
        if (i2 < 21) {
            valueOf = strArr2[i2];
        } else {
            char[] cArr = new char[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                cArr[i4] = ' ';
            }
            valueOf = String.valueOf(cArr);
        }
        append.append(valueOf);
    }

    public PreferenceSearchItem parseSearchResult(XmlResourceParser xmlResourceParser, String str, int i) {
        String readString = readString(getAttribute(xmlResourceParser, "key"));
        String[] readStringArray = readStringArray(getAttribute(xmlResourceParser, "entries"));
        String[] readStringArray2 = readStringArray(getAttribute(xmlResourceParser, "entryValues"));
        return new PreferenceSearchItem(i, readString, tryFillInPreferenceValue(readString(getAttribute(xmlResourceParser, "title")), readString, readStringArray, readStringArray2), tryFillInPreferenceValue(readString(getAttribute(xmlResourceParser, "summary")), readString, readStringArray, readStringArray2), TextUtils.join(",", readStringArray), str);
    }

    public String readString(String str) {
        if (str == null) {
            return "";
        }
        if (str.startsWith("@")) {
            try {
                return ((Context) this.root).getString(Integer.parseInt(str.substring(1)));
            } catch (Exception e) {
                Log.w("PreferenceParser", "Unable to readString from '" + str + "'", e);
            }
        }
        return str;
    }

    public String[] readStringArray(String str) {
        if (str == null) {
            return new String[0];
        }
        if (str.startsWith("@")) {
            try {
                return ((Context) this.root).getResources().getStringArray(Integer.parseInt(str.substring(1)));
            } catch (Exception e) {
                Log.w("PreferenceParser", "Unable to readStringArray from '" + str + "'", e);
            }
        }
        return new String[0];
    }

    public MediaSource resolve(StreamInfo streamInfo) {
        Stream stream;
        StreamInfoTag streamInfoTag;
        String cacheKeyOf;
        PlayerService playerService = (PlayerService) this.root;
        PlayerDataSource playerDataSource = (PlayerDataSource) this.accum;
        MediaSource maybeBuildLiveMediaSource = RecordTag.maybeBuildLiveMediaSource(playerDataSource, streamInfo);
        if (maybeBuildLiveMediaSource != null) {
            return maybeBuildLiveMediaSource;
        }
        List filteredAudioStreams = ListHelper.getFilteredAudioStreams(playerService, streamInfo.getAudioStreams());
        if (filteredAudioStreams.isEmpty()) {
            List filteredStreamList = ListHelper.getFilteredStreamList(streamInfo.getVideoStreams(), new ListHelper$$ExternalSyntheticLambda21(streamInfo.getServiceId(), ServiceList.YouTube.serviceId));
            if (!filteredStreamList.isEmpty()) {
                int defaultResolutionWithDefaultFormat = ListHelper.getDefaultResolutionWithDefaultFormat(playerService, ListHelper.computeDefaultResolution(playerService, R.string.default_resolution_key, R.string.default_resolution_value), filteredStreamList);
                stream = (defaultResolutionWithDefaultFormat < 0 || defaultResolutionWithDefaultFormat >= filteredStreamList.size()) ? null : (Stream) filteredStreamList.get(defaultResolutionWithDefaultFormat);
                streamInfoTag = new StreamInfoTag(streamInfo, null, null, null);
            }
            return null;
        }
        int audioFormatIndex = ListHelper.getAudioFormatIndex(playerService, filteredAudioStreams, (String) this.settings);
        stream = (audioFormatIndex < 0 || audioFormatIndex >= filteredAudioStreams.size()) ? null : (Stream) filteredAudioStreams.get(audioFormatIndex);
        streamInfoTag = new StreamInfoTag(streamInfo, null, new MediaItemTag.AudioTrack(audioFormatIndex, filteredAudioStreams), null);
        try {
            if (stream instanceof AudioStream) {
                cacheKeyOf = RecordTag.cacheKeyOf(streamInfo, (AudioStream) stream);
            } else {
                if (!(stream instanceof VideoStream)) {
                    throw new RuntimeException("no audio or video stream. That should never happen");
                }
                cacheKeyOf = RecordTag.cacheKeyOf(streamInfo, (VideoStream) stream);
            }
            return RecordTag.buildMediaSource(playerDataSource, stream, streamInfo, cacheKeyOf, streamInfoTag);
        } catch (PlaybackResolver$ResolverException e) {
            Log.e("AudioPlaybackResolver", "Unable to create audio source", e);
        }
    }

    public InstanceFactory resolveDefinition$koin_core(ClassReference classReference, Qualifier qualifier, Qualifier qualifier2) {
        String str;
        classReference.getClass();
        qualifier2.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(KClassExtKt.getFullName(classReference));
        sb.append(':');
        if (qualifier == null || (str = qualifier.getValue()) == null) {
            str = "";
        }
        sb.append(str);
        sb.append(':');
        sb.append(qualifier2);
        return (InstanceFactory) ((ConcurrentHashMap) this.accum).get(sb.toString());
    }

    @Override // org.jsoup.select.NodeVisitor
    public void tail(Node node, int i) {
        if (node instanceof Element) {
            addTail((Element) node, i);
        }
    }

    public String tryFillInPreferenceValue(String str, String str2, String[] strArr, String[] strArr2) {
        Object obj;
        if (str == null) {
            return "";
        }
        if (str2 == null || (obj = ((Map) this.accum).get(str2)) == null) {
            return str;
        }
        Object obj2 = obj;
        if (strArr.length > 0) {
            obj2 = obj;
            if (strArr2.length == strArr.length) {
                int indexOf = Arrays.asList(strArr2).indexOf(obj);
                obj2 = obj;
                if (indexOf != -1) {
                    obj2 = strArr[indexOf];
                }
            }
        }
        return String.format(str, obj2.toString());
    }

    public /* synthetic */ Printer(int i, Object obj, Object obj2, Object obj3) {
        this.$r8$classId = i;
        this.root = obj;
        this.accum = obj2;
        this.settings = obj3;
    }

    public /* synthetic */ Printer(ViewGroup viewGroup, ViewBinding viewBinding, View view, Object obj, int i) {
        this.$r8$classId = i;
        this.root = viewGroup;
        this.accum = view;
        this.settings = obj;
    }

    public /* synthetic */ Printer(int i) {
        this.$r8$classId = i;
    }

    public Printer(Context context, Printer printer) {
        this.$r8$classId = 13;
        this.root = context;
        this.accum = PreferenceManager.getDefaultSharedPreferences(context).getAll();
        this.settings = printer;
    }

    public Printer(PlayerService playerService, PlayerDataSource playerDataSource) {
        this.$r8$classId = 12;
        this.root = playerService;
        this.accum = playerDataSource;
    }

    public Printer(Koin koin) {
        this.$r8$classId = 2;
        this.root = koin;
        this.accum = new ConcurrentHashMap();
        this.settings = new ConcurrentHashMap();
    }
}
