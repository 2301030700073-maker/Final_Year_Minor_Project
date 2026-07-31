package com.redshift.rs_vapourtraining.ui.home;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.volley.BuildConfig;
import com.redshift.rs_vapourtraining.DBHandler;
import com.redshift.rs_vapourtraining.ProductAdaptor;
import com.redshift.rs_vapourtraining.ProductModal;
import com.redshift.rs_vapourtraining.R;
import java.util.ArrayList;

/* loaded from: classes8.dex */
public class HomeFragment extends Fragment {
    TextView cText;
    private DBHandler dbHandler;
    TextView gText;
    private ArrayList<ProductModal> productModalArrayList;
    private RecyclerView productRV;
    private ProductAdaptor productRVAdapter;
    TextView tText;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.fragment_home, container, false);
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(getActivity());
        String userID = prefs.getString("userRS", BuildConfig.FLAVOR);
        this.productModalArrayList = new ArrayList<>();
        this.dbHandler = new DBHandler(getActivity());
        updateCreds();
        ArrayList<ProductModal> ownedGames = this.dbHandler.getOwnedGames(userID);
        this.productModalArrayList = ownedGames;
        if (ownedGames != null) {
            this.productRVAdapter = new ProductAdaptor(this.productModalArrayList, getActivity());
            this.productRV = (RecyclerView) root.findViewById(R.id.idRVProductsOwned);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity(), 1, false);
            this.productRV.setLayoutManager(linearLayoutManager);
            this.productRV.setAdapter(this.productRVAdapter);
        }
        this.cText = (TextView) root.findViewById(R.id.credits_amount);
        this.gText = (TextView) root.findViewById(R.id.games_amount);
        this.tText = (TextView) root.findViewById(R.id.title2Home);
        this.cText.setText(String.valueOf(this.dbHandler.getCreds(userID)));
        this.tText.setText(String.valueOf(this.dbHandler.checkUser(userID)));
        try {
            this.gText.setText(String.valueOf(this.productModalArrayList.size()));
        } catch (Exception e) {
            this.gText.setText(String.valueOf(0));
        }
        return root;
    }

    public void updateCreds() {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(getActivity());
        String boughtCreds = prefs.getString("userbuyCredits", BuildConfig.FLAVOR);
        String userID = prefs.getString("userRS", BuildConfig.FLAVOR);
        int requestedcreds = Integer.parseInt(boughtCreds);
        int mycreds = this.dbHandler.getCreds(userID);
        this.dbHandler.updateCredits(userID, mycreds + requestedcreds);
        SharedPreferences.Editor editor = prefs.edit();
        editor.putString("userbuyCredits", "0");
        editor.commit();
    }
}
