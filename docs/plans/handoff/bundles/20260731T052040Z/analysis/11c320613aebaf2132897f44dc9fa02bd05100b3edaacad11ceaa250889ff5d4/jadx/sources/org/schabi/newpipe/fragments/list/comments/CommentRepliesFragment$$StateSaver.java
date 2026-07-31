package org.schabi.newpipe.fragments.list.comments;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import java.util.HashMap;
import org.schabi.newpipe.extractor.comments.CommentsInfoItem;
import org.schabi.newpipe.fragments.list.BaseListInfoFragment$$StateSaver;
import org.schabi.newpipe.fragments.list.comments.CommentRepliesFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class CommentRepliesFragment$$StateSaver<T extends CommentRepliesFragment> extends BaseListInfoFragment$$StateSaver<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.fragments.list.comments.CommentRepliesFragment$$StateSaver", hashMap);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment$$StateSaver
    public void restore(T t, Bundle bundle) {
        super.restore((CommentRepliesFragment$$StateSaver<T>) t, bundle);
        t.commentsInfoItem = (CommentsInfoItem) HELPER.getSerializable(bundle, "commentsInfoItem");
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment$$StateSaver
    public void save(T t, Bundle bundle) {
        super.save((CommentRepliesFragment$$StateSaver<T>) t, bundle);
        HELPER.putSerializable(bundle, "commentsInfoItem", t.commentsInfoItem);
    }
}
