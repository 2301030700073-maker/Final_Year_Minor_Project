package androidx.emoji2.text;

import androidx.emoji2.text.flatbuffer.MetadataItem;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmojiProcessor$ProcessorSm {
    public int mCurrentDepth;
    public MetadataRepo$Node mCurrentNode;
    public MetadataRepo$Node mFlushNode;
    public int mLastCodepoint;
    public final MetadataRepo$Node mRootNode;
    public int mState = 1;

    public EmojiProcessor$ProcessorSm(MetadataRepo$Node metadataRepo$Node) {
        this.mRootNode = metadataRepo$Node;
        this.mCurrentNode = metadataRepo$Node;
    }

    public final void reset() {
        this.mState = 1;
        this.mCurrentNode = this.mRootNode;
        this.mCurrentDepth = 0;
    }

    public final boolean shouldUseEmojiPresentationStyleForSingleCodepoint() {
        MetadataItem metadataItem = this.mCurrentNode.mData.getMetadataItem();
        int __offset = metadataItem.__offset(6);
        return !(__offset == 0 || ((ByteBuffer) metadataItem.bb).get(__offset + metadataItem.bb_pos) == 0) || this.mLastCodepoint == 65039;
    }
}
