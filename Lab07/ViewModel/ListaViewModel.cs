﻿using Entity;
using Lab07.View;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Lab07.ViewModel
{
    public class ListaViewModel : ViewModelBase
    {
        public ObservableCollection<Categoria> Categorias { get; set; }

        public ICommand NuevoCommand { set; get; }
        public ICommand ConsultarCommand { set; get; }

        public ListaViewModel()
        {
            Categorias = new Model.CategoriaModel().Categorias;

            NuevoCommand = new RelayCommand<Window>(
                param => Abrir()
                );

            ConsultarCommand = new RelayCommand<object>(
                o => { Categorias = (new Model.CategoriaModel()).Categorias; }
                );

            void Abrir()
            {
                ManCategoria window = new ManCategoria();
                window.ShowDialog();

            }
        }
    }
}
