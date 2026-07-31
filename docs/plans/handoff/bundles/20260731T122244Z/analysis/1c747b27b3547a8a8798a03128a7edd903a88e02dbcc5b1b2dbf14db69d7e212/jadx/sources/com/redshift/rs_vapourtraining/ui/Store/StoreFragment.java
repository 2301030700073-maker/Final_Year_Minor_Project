package com.redshift.rs_vapourtraining.ui.Store;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.volley.BuildConfig;
import com.redshift.rs_vapourtraining.DBHandler;
import com.redshift.rs_vapourtraining.ProductAdaptor;
import com.redshift.rs_vapourtraining.ProductModal;
import com.redshift.rs_vapourtraining.R;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class StoreFragment extends Fragment {
    private DBHandler dbHandler;
    private ArrayList<ProductModal> productModalArrayList;
    private RecyclerView productRV;
    private ProductAdaptor productRVAdapter;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.fragment_store, container, false);
        this.productModalArrayList = new ArrayList<>();
        DBHandler dBHandler = new DBHandler(getActivity());
        this.dbHandler = dBHandler;
        this.productModalArrayList = dBHandler.readProducts();
        this.productRVAdapter = new ProductAdaptor(this.productModalArrayList, getActivity());
        this.productRV = (RecyclerView) root.findViewById(R.id.idRVProducts);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity(), 1, false);
        this.productRV.setLayoutManager(linearLayoutManager);
        this.productRV.setAdapter(this.productRVAdapter);
        this.productRVAdapter.setWhenClickListener(new ProductAdaptor.OnItemsClickListener() { // from class: com.redshift.rs_vapourtraining.ui.Store.StoreFragment.1
            @Override // com.redshift.rs_vapourtraining.ProductAdaptor.OnItemsClickListener
            public void onItemClick(ProductModal rvProductModel) throws JSONException {
                Toast.makeText(StoreFragment.this.getContext(), "Buying: " + String.valueOf(rvProductModel.getproductName()), 0).show();
                SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(StoreFragment.this.getActivity());
                String userID = prefs.getString("userRS", BuildConfig.FLAVOR);
                int userCredits = StoreFragment.this.dbHandler.getCreds(userID);
                Toast.makeText(StoreFragment.this.getContext(), "Credits: " + String.valueOf(userCredits), 0).show();
                int productCreds = rvProductModel.getProductCreditsworth();
                int userBalance = userCredits - productCreds;
                if (userBalance > 0) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("name", "student");
                    JSONArray array = new JSONArray();
                    JSONObject item = new JSONObject();
                    item.put("name", rvProductModel.getproductName());
                    item.put("ID", rvProductModel.getId());
                    item.put("price", rvProductModel.getproductPrice());
                    item.put("userID", userID);
                    array.put(item);
                    jSONObject.put("course", array);
                    String message = jSONObject.toString();
                    StoreFragment storeFragment = StoreFragment.this;
                    storeFragment.writeToFile(message, storeFragment.getActivity());
                    StoreFragment.this.dbHandler.buyGame(userID, rvProductModel.getId());
                    StoreFragment.this.dbHandler.updateCredits(userID, userBalance);
                    Toast.makeText(StoreFragment.this.getContext(), "Bought: " + rvProductModel.getproductName(), 0).show();
                    return;
                }
                Toast.makeText(StoreFragment.this.getContext(), "Insuffcient credits!", 0).show();
            }
        });
        return root;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeToFile(String data, Context context) {
        try {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(context.openFileOutput("gamesbought.txt", 0));
            outputStreamWriter.write(data);
            outputStreamWriter.close();
        } catch (IOException e) {
            Log.e("Exception", "File write failed: " + e.toString());
        }
    }
}
